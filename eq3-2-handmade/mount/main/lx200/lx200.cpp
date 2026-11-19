#include "lx200.h"

#include <cstring>

#include "esp_log.h"
#include "esp_timer.h"

#include "lx200_format.h"
#include "mount.h"

static const char *TAG = "lx200";

// Команда без '#' дольше этого времени — обрывок, выбрасываем
#define LX200_STALE_US (1000LL * 1000)   // 1 с

/*
    Как оформить ответ команды. Правила — как у OnStepX: с ним проверены
    Stellarium, SkySafari, INDI и ASCOM (info/lx200.md).

      NONE    — ответа нет (:Mn#, :Q#, :RS#);
      BOOL    — один символ '1' / '0' без '#' (:Te#, :Sr…#);
      STRING  — текст + '#' (:GR# → "05:35:17#");
      RAW     — обработчик пишет ответ целиком сам, '#' не добавляется
                (:MS# → "0" при успехе, но "1Ниже горизонта#" при отказе).
*/
enum lx200_reply_t {
    LX200_REPLY_NONE,
    LX200_REPLY_BOOL,
    LX200_REPLY_STRING,
    LX200_REPLY_RAW,
};

/*
    Обработчик команды.
    cmd — команда без ':' и '#' ("Me", "Sr05:35:17").
    out — куда писать текст ответа (для STRING — без '#', его добавит execute).
    Возвращает:
      BOOL         — сам ответ: true → '1', false → '0';
      STRING / RAW — true, если ответ записан в out; false — ошибка, ответа не будет;
      NONE         — не важно.
*/
typedef bool (*lx200_handler_t)(lx200_ctx_t *ctx, const char *cmd, char *out, size_t size);

typedef struct {
    const char     *name;       // команда без ':' и '#'
    bool            has_args;   // false — точное совпадение ("Q" не совпадёт с "Qe");
                                // true  — префикс, дальше параметры (":Sr05:35:17#")
    lx200_reply_t   reply;      // как оформить ответ
    lx200_handler_t handler;
} lx200_cmd_t;

static mount_dir_t to_mount_dir(lx200_dir_t dir) {
    switch (dir) {
        case LX200_DIR_N: return MOUNT_DIR_N;
        case LX200_DIR_S: return MOUNT_DIR_S;
        case LX200_DIR_E: return MOUNT_DIR_E;
        case LX200_DIR_W: return MOUNT_DIR_W;
    }
    return MOUNT_DIR_N;
}

static mount_rate_t to_mount_rate(lx200_rate_t rate) {
    switch (rate) {
        case LX200_RATE_GUIDE:  return MOUNT_RATE_GUIDE;
        case LX200_RATE_CENTER: return MOUNT_RATE_CENTER;
        case LX200_RATE_FIND:   return MOUNT_RATE_FIND;
        case LX200_RATE_SLEW:   return MOUNT_RATE_SLEW;
    }
    return MOUNT_RATE_SLEW;
}

// --- Движение ---

// :Mn# :Ms# :Me# :Mw# — ехать в направлении, пока не придёт стоп
// (а у канала с keepalive_moves — пока приходят повторы)
static bool cmd_move(lx200_ctx_t *ctx, const char *cmd, char *, size_t) {
    lx200_dir_t dir;
    if (lx200_dir_from_char(cmd[1], &dir)) {
        mount_move(to_mount_dir(dir), ctx->keepalive_moves);
    }
    return true;
}

// :Qn# :Qs# :Qe# :Qw# — остановить движение в направлении
static bool cmd_stop_dir(lx200_ctx_t *, const char *cmd, char *, size_t) {
    lx200_dir_t dir;
    if (lx200_dir_from_char(cmd[1], &dir)) {
        mount_stop(to_mount_dir(dir));
    }
    return true;
}

// :Q# — остановить всё
static bool cmd_stop_all(lx200_ctx_t *, const char *, char *, size_t) {
    mount_stop_all();
    return true;
}

// :RG# :RC# :RM# :RS# — скорость ручного движения
static bool cmd_rate(lx200_ctx_t *, const char *cmd, char *, size_t) {
    lx200_rate_t rate;
    if (lx200_rate_from_char(cmd[1], &rate)) {
        mount_set_rate(to_mount_rate(rate));
    }
    return true;
}

// :Te# :Td# — включить / выключить ведение (расширение OnStep, ответ '1' / '0').
// '1' значит «команда принята в очередь»: в аварии автомат её всё равно отклонит (лог)
static bool cmd_track(lx200_ctx_t *, const char *cmd, char *, size_t) {
    return mount_track(cmd[1] == 'e') == ESP_OK;
}

// --- Формат координат ---

// :U# — переключить длинный / короткий формат координат этого канала
static bool cmd_toggle_format(lx200_ctx_t *ctx, const char *, char *, size_t) {
    ctx->long_format = !ctx->long_format;
    ESP_LOGI(TAG, "[%s] формат координат: %s", ctx->name, ctx->long_format ? "длинный" : "короткий");
    return true;
}

// --- Координаты ---

// :GR# — RA, куда смотрит телескоп: "HH:MM:SS" (короткий формат "HH:MM.T")
static bool cmd_get_ra(lx200_ctx_t *ctx, const char *, char *out, size_t size) {
    int32_t ra, dec;
    mount_get_radec(&ra, &dec);
    return lx200_format_ra(ra, ctx->long_format, out, size) > 0;
}

// :GD# — DEC, куда смотрит телескоп: "sDD*MM:SS" (короткий формат "sDD*MM")
static bool cmd_get_dec(lx200_ctx_t *ctx, const char *, char *out, size_t size) {
    int32_t ra, dec;
    mount_get_radec(&ra, &dec);
    return lx200_format_dec(dec, ctx->long_format, out, size) > 0;
}

// :SrHH:MM:SS# — запомнить RA цели. Ответ '1' — принято, '0' — не разобрали
static bool cmd_set_ra(lx200_ctx_t *ctx, const char *cmd, char *, size_t) {
    int32_t ra;
    if (!lx200_parse_ra(cmd + 2, &ra)) {
        ESP_LOGW(TAG, "[%s] не разобрать RA \"%s\"", ctx->name, cmd + 2);
        return false;
    }
    ctx->target_ra_sec = ra;
    ctx->has_target_ra = true;
    return true;
}

// :SdsDD*MM:SS# — запомнить DEC цели. Ответ '1' / '0'
static bool cmd_set_dec(lx200_ctx_t *ctx, const char *cmd, char *, size_t) {
    int32_t dec;
    if (!lx200_parse_dec(cmd + 2, &dec)) {
        ESP_LOGW(TAG, "[%s] не разобрать DEC \"%s\"", ctx->name, cmd + 2);
        return false;
    }
    ctx->target_dec_arcsec = dec;
    ctx->has_target_dec = true;
    return true;
}

/*
    :CM# — синхронизация: «телескоп смотрит на цель из :Sr / :Sd».
    Ответ как у OnStepX: "N/A#" — готово, "En#" — нет, где n — код его :MS#:
      E5 — идёт GoTo, E7 — авария, E9 — цель не задана (:Sr / :Sd не приходили).
    Stellarium считает успехом любую строку с '#', так что ошибку видно только в логе.
*/
static bool cmd_sync(lx200_ctx_t *ctx, const char *, char *out, size_t size) {
    const char *text = "N/A";

    if (!ctx->has_target_ra || !ctx->has_target_dec) {
        ESP_LOGW(TAG, "[%s] :CM# без цели — сначала :Sr и :Sd", ctx->name);
        text = "E9";
    } else if (mount_sync(ctx->target_ra_sec, ctx->target_dec_arcsec) != ESP_OK) {
        text = mount_get_state() == MOUNT_STATE_GOTO ? "E5" : "E7";
    }

    if (strlen(text) + 1 > size) return false;
    strcpy(out, text);
    return true;
}

// --- Состояние ---

static lx200_rate_t to_lx200_rate(mount_rate_t rate) {
    switch (rate) {
        case MOUNT_RATE_GUIDE:  return LX200_RATE_GUIDE;
        case MOUNT_RATE_CENTER: return LX200_RATE_CENTER;
        case MOUNT_RATE_FIND:   return LX200_RATE_FIND;
        case MOUNT_RATE_SLEW:   return LX200_RATE_SLEW;
    }
    return LX200_RATE_SLEW;
}

// :GU# — состояние монтировки в формате OnStepX: "nNpEo280" (lx200_format.h).
// Пульт опрашивает её раз в 500 мс: ведение, GoTo, скорость стрелок, авария
static bool cmd_status(lx200_ctx_t *, const char *, char *out, size_t size) {
    mount_state_t state = mount_get_state();

    lx200_status_t st;
    st.tracking    = state == MOUNT_STATE_TRACKING;
    st.goto_active = state == MOUNT_STATE_GOTO;
    st.rate        = to_lx200_rate(mount_get_rate());
    st.error       = state == MOUNT_STATE_FAULT ? LX200_STATUS_ERR_MOTOR_FAULT : LX200_STATUS_ERR_NONE;
    return lx200_format_status(&st, out, size) > 0;
}

/*
    Таблица команд: новая команда — новая строка.
    Команды с параметрами (has_args = true) сравниваются по началу строки,
    поэтому более длинное имя ставить выше более короткого с тем же началом.
*/
static const lx200_cmd_t COMMANDS[] = {
    // Движение
    { "Mn", false, LX200_REPLY_NONE, cmd_move          },
    { "Ms", false, LX200_REPLY_NONE, cmd_move          },
    { "Me", false, LX200_REPLY_NONE, cmd_move          },
    { "Mw", false, LX200_REPLY_NONE, cmd_move          },
    { "Qn", false, LX200_REPLY_NONE, cmd_stop_dir      },
    { "Qs", false, LX200_REPLY_NONE, cmd_stop_dir      },
    { "Qe", false, LX200_REPLY_NONE, cmd_stop_dir      },
    { "Qw", false, LX200_REPLY_NONE, cmd_stop_dir      },
    { "Q",  false, LX200_REPLY_NONE, cmd_stop_all      },
    { "RG", false, LX200_REPLY_NONE, cmd_rate          },
    { "RC", false, LX200_REPLY_NONE, cmd_rate          },
    { "RM", false, LX200_REPLY_NONE, cmd_rate          },
    { "RS", false, LX200_REPLY_NONE, cmd_rate          },
    // Ведение
    { "Te", false, LX200_REPLY_BOOL, cmd_track         },
    { "Td", false, LX200_REPLY_BOOL, cmd_track         },
    // Координаты
    { "U",  false, LX200_REPLY_NONE,   cmd_toggle_format },
    { "GR", false, LX200_REPLY_STRING, cmd_get_ra        },
    { "GD", false, LX200_REPLY_STRING, cmd_get_dec       },
    { "Sr", true,  LX200_REPLY_BOOL,   cmd_set_ra        },
    { "Sd", true,  LX200_REPLY_BOOL,   cmd_set_dec       },
    { "CM", false, LX200_REPLY_STRING, cmd_sync          },
    // Состояние
    { "GU", false, LX200_REPLY_STRING, cmd_status        },
};

// Оформить ответ по типу команды. Возвращает длину ответа в reply, 0 — без ответа
static size_t make_reply(const lx200_cmd_t &c, lx200_ctx_t *ctx, const char *cmd,
                         char *reply, size_t size) {
    if (size < 2) return 0;   // меньше не поместится даже "1" + '\0'
    reply[0] = '\0';

    switch (c.reply) {
        case LX200_REPLY_NONE:
            c.handler(ctx, cmd, reply, size);
            return 0;

        case LX200_REPLY_BOOL: {
            bool ok = c.handler(ctx, cmd, reply, size);
            reply[0] = ok ? '1' : '0';
            reply[1] = '\0';
            return 1;
        }

        case LX200_REPLY_STRING: {
            // Оставить место под '#'
            if (!c.handler(ctx, cmd, reply, size - 1)) return 0;
            size_t n = strlen(reply);
            reply[n++] = '#';
            reply[n] = '\0';
            return n;
        }

        case LX200_REPLY_RAW:
            if (!c.handler(ctx, cmd, reply, size)) return 0;
            return strlen(reply);
    }
    return 0;
}

// Найти команду в таблице и выполнить
static size_t execute(lx200_ctx_t *ctx, const char *cmd, char *reply, size_t size) {
    if (cmd[0] == '\0') return 0;   // ":#" — пустая команда

    for (const lx200_cmd_t &c : COMMANDS) {
        bool match = c.has_args ? strncmp(cmd, c.name, strlen(c.name)) == 0
                                : strcmp(cmd, c.name) == 0;
        if (match) {
            // Запросы :G…# программы шлют постоянно (Stellarium — :GR# и :GD# дважды в секунду):
            // в обычный лог только остальные команды
            if (cmd[0] == 'G') {
                ESP_LOGD(TAG, "[%s] :%s#", ctx->name, cmd);
            } else {
                ESP_LOGI(TAG, "[%s] :%s#", ctx->name, cmd);
            }
            return make_reply(c, ctx, cmd, reply, size);
        }
    }

    // Неизвестная команда — молчим, как настоящие монтировки:
    // ответ «на всякий случай» сбил бы программу на компьютере
    ESP_LOGW(TAG, "[%s] неизвестная команда :%s# — без ответа", ctx->name, cmd);
    return 0;
}

void lx200_ctx_init(lx200_ctx_t *ctx, const char *name) {
    memset(ctx, 0, sizeof(*ctx));
    ctx->long_format = true;   // формат координат по умолчанию; :U# переключает
    ctx->name = name;
}

size_t lx200_feed(lx200_ctx_t *ctx, uint8_t byte, char *reply, size_t reply_size) {
    // ACK вне команды: «какая монтировка?» Ответ — один символ без '#':
    // 'P' — экваториальная, как у OnStepX (его :Gw#)
    if (byte == LX200_ACK && !ctx->collecting) {
        if (reply_size < 2) return 0;
        reply[0] = 'P';
        reply[1] = '\0';
        return 1;
    }

    // Пробелы и переводы строк выбрасываем везде, как OnStepX:
    // ":Sr 05:35:17#" == ":Sr05:35:17#", а терминал может добавить "\r\n"
    if (byte == ' ' || byte == '\r' || byte == '\n') return 0;

    // Обрывок без '#' висит дольше секунды — выбросить
    if (ctx->collecting && esp_timer_get_time() - ctx->started_us > LX200_STALE_US) {
        ESP_LOGW(TAG, "[%s] команда без '#' дольше 1 с — сброшена", ctx->name);
        ctx->collecting = false;
    }

    if (!ctx->collecting) {
        // ':' начинает команду только ВНЕ команды: внутри параметров тоже есть ':'
        // (":Sr05:35:17#"). Всё остальное вне команды — мусор или одиночный '#'
        // (Stellarium и INDI шлют "#:GR#")
        if (byte == ':') {
            ctx->collecting = true;
            ctx->len = 0;
            ctx->started_us = esp_timer_get_time();
        }
        return 0;
    }

    // Второе ':' сразу после первого (INDI LX200 Classic шлёт "::Sr…#") — пропустить
    if (byte == ':' && ctx->len == 0) return 0;

    if (byte == '#') {
        ctx->buf[ctx->len] = '\0';
        ctx->collecting = false;
        return execute(ctx, ctx->buf, reply, reply_size);
    }

    if (ctx->len >= LX200_CMD_MAX_LEN - 1) {
        ESP_LOGW(TAG, "[%s] команда длиннее %d байт — выброшена", ctx->name, LX200_CMD_MAX_LEN - 1);
        ctx->collecting = false;
        return 0;
    }

    ctx->buf[ctx->len++] = (char)byte;
    return 0;
}
