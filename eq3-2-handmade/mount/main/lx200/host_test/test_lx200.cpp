/*
    Проверки парсера LX200 на компьютере, без платы.

    Вместо монтировки — заглушка: каждый вызов mount_* записывается строкой
    в calls ("move W keepalive=0"), проверка сравнивает её с ожидаемой.
    Вместо ESP-IDF — заглушки из host_test/stubs.

    Запуск (из папки main/lx200):
        c++ -std=c++17 -Wall -Wextra -Ihost_test/stubs -I. -I../mount \
            -I../../../components/lx200_format/include \
            host_test/test_lx200.cpp lx200.cpp ../../../components/lx200_format/lx200_format.cpp \
            -o /tmp/test_lx200 && /tmp/test_lx200

    Ошибка → строка с FAIL и код выхода 1.
*/
#include <cstdio>
#include <cstring>
#include <string>

#include "lx200.h"
#include "mount.h"

int64_t fake_time_us = 0;

// ─── Заглушка монтировки: запоминает вызовы ──────────────────────────────────

static std::string calls;                  // все вызовы mount_* через "; "
static esp_err_t   track_result = ESP_OK;  // что вернёт mount_track

static void record(const std::string &s) {
    if (!calls.empty()) calls += "; ";
    calls += s;
}

static const char DIR_CHAR[] = { 'N', 'S', 'E', 'W' };
static const char *const RATE_NAME[] = { "GUIDE", "CENTER", "FIND", "SLEW" };

esp_err_t mount_move(mount_dir_t dir, bool keepalive) {
    record(std::string("move ") + DIR_CHAR[dir] + " keepalive=" + (keepalive ? "1" : "0"));
    return ESP_OK;
}

esp_err_t mount_stop(mount_dir_t dir) {
    record(std::string("stop ") + DIR_CHAR[dir]);
    return ESP_OK;
}

esp_err_t mount_stop_all() {
    record("stop_all");
    return ESP_OK;
}

esp_err_t mount_track(bool on) {
    record(std::string("track ") + (on ? "on" : "off"));
    return track_result;
}

void mount_set_rate(mount_rate_t rate) {
    record(std::string("rate ") + RATE_NAME[rate]);
}

// Куда «смотрит» монтировка-заглушка и в каком она состоянии — задаёт проверка
static int32_t       fake_ra_sec     = 0;
static int32_t       fake_dec_arcsec = 0;
static mount_state_t fake_state      = MOUNT_STATE_IDLE;

static mount_rate_t  fake_rate       = MOUNT_RATE_SLEW;

mount_state_t mount_get_state() {
    return fake_state;
}

mount_rate_t mount_get_rate() {
    return fake_rate;
}

void mount_get_radec(int32_t *ra_sec, int32_t *dec_arcsec) {
    *ra_sec = fake_ra_sec;
    *dec_arcsec = fake_dec_arcsec;
}

esp_err_t mount_sync(int32_t ra_sec, int32_t dec_arcsec) {
    record("sync " + std::to_string(ra_sec) + " " + std::to_string(dec_arcsec));
    if (fake_state == MOUNT_STATE_GOTO || fake_state == MOUNT_STATE_FAULT) return ESP_ERR_INVALID_STATE;
    return ESP_OK;
}

bool mount_is_synced() {
    return false;
}

// ─── Помощники ───────────────────────────────────────────────────────────────

static int failures = 0;

/*
    Отдать парсеру строку байт за байтом, как это делает канал (USB, TCP, ESP-NOW).
    Возвращает все ответы подряд — так их увидит программа на компьютере.
*/
static std::string feed(lx200_ctx_t *ctx, const std::string &bytes) {
    std::string out;
    char reply[LX200_REPLY_MAX_LEN];
    for (char b : bytes) {
        size_t n = lx200_feed(ctx, (uint8_t)b, reply, sizeof(reply));
        if (n > 0) out.append(reply, n);
    }
    return out;
}

/*
    Одна проверка: на вход bytes, ожидаем ответ expect_reply и вызовы expect_calls.
    Каждая проверка начинается с нового канала и пустого списка вызовов.
*/
static void check(const char *title, const std::string &bytes,
                  const std::string &expect_reply, const std::string &expect_calls,
                  bool keepalive = false) {
    lx200_ctx_t ctx;
    lx200_ctx_init(&ctx, "test");
    ctx.keepalive_moves = keepalive;
    calls.clear();

    std::string got = feed(&ctx, bytes);
    if (got != expect_reply || calls != expect_calls) {
        printf("FAIL %s\n     ответ:  \"%s\", ожидалось \"%s\"\n     вызовы: \"%s\", ожидалось \"%s\"\n",
               title, got.c_str(), expect_reply.c_str(), calls.c_str(), expect_calls.c_str());
        failures++;
    }
}

// ─── Проверки ────────────────────────────────────────────────────────────────

static void test_motion() {
    check("стрелка запад",          ":Mw#", "", "move W keepalive=0");
    check("стрелка с повтором",     ":Mn#", "", "move N keepalive=1", true);
    check("отпустил восток",        ":Qe#", "", "stop E");
    check("стоп всего",             ":Q#",  "", "stop_all");
    check("скорость CENTER",        ":RC#", "", "rate CENTER");
    check("скорость SLEW",          ":RS#", "", "rate SLEW");
    check("неизвестная стрелка",    ":Mx#", "", "");   // в таблице нет — молчим
}

static void test_tracking() {
    track_result = ESP_OK;
    check("ведение вкл",            ":Te#", "1", "track on");
    check("ведение выкл",           ":Td#", "1", "track off");
    track_result = ESP_FAIL;
    check("ведение: очередь полна", ":Te#", "0", "track on");
    track_result = ESP_OK;
}

static void test_ack_and_format() {
    check("ACK",                    "\x06", "P", "");

    lx200_ctx_t ctx;
    lx200_ctx_init(&ctx, "test");
    if (!ctx.long_format) { printf("FAIL формат по умолчанию не длинный\n"); failures++; }
    std::string r = feed(&ctx, ":U#");
    if (!r.empty() || ctx.long_format) { printf("FAIL :U# не переключил на короткий\n"); failures++; }
    feed(&ctx, ":U#");
    if (!ctx.long_format) { printf("FAIL второй :U# не вернул длинный\n"); failures++; }
}

// То, как разные программы на самом деле присылают команды
static void test_tolerance() {
    check("'#' перед командой (Stellarium, INDI)", "#:Mw#",      "",  "move W keepalive=0");
    check("двойное ':' (INDI LX200 Classic)",     "::Mw#",      "",  "move W keepalive=0");
    check("пробелы внутри",                        ": M w #",    "",  "move W keepalive=0");
    check("перевод строки из терминала",           ":Te#\r\n",   "1", "track on");
    check("несколько команд подряд",               ":RG#:Mw#:Te#", "1", "rate GUIDE; move W keepalive=0; track on");
    check("мусор между командами",                 "xyz:Q#abc",  "",  "stop_all");
    check("пустая команда",                        ":#",         "",  "");
    check("неизвестная команда — молчим",          ":GQ#",       "",  "");
    check("ACK между командами",                   ":Q#\x06:Q#", "P", "stop_all; stop_all");
}

// Координаты: то, что Stellarium спрашивает дважды в секунду, и синхронизация
static void test_coordinates() {
    // Бетельгейзе: RA 05:55:10, DEC +07°24′25″
    fake_ra_sec     = 5 * 3600 + 55 * 60 + 10;
    fake_dec_arcsec = 7 * 3600 + 24 * 60 + 25;
    check("где телескоп: RA",          "#:GR#", "05:55:10#",  "");
    check("где телескоп: DEC",         "#:GD#", "+07*24:25#", "");
    check(":U# → короткий формат",     ":U#:GR#:GD#", "05:55.2#+07*24#", "");

    fake_dec_arcsec = -(16 * 3600 + 42 * 60 + 58);   // Сириус −16°42′58″
    check("отрицательный DEC",         ":GD#", "-16*42:58#", "");

    // Цель: как шлёт Stellarium (без пробела, градус — байт 0xDF)
    check("цель RA",                   ":Sr05:55:10#", "1", "");
    check("цель DEC (0xDF)",           ":Sd+07\xDF" "24:25#", "1", "");
    check("цель с пробелом (старые программы)", ":Sr 05:55:10#", "1", "");
    check("цель RA: мусор",            ":Sr25:99:99#", "0", "");
    check("цель DEC: мусор",           ":Sd+95*00:00#", "0", "");

    // Синхронизация, как её шлёт Stellarium: :Sr, :Sd, :CM#
    fake_state = MOUNT_STATE_TRACKING;
    check("синхронизация", ":Sr05:55:10#:Sd+07\xDF" "24:25#:CM#", "11N/A#", "sync 21310 26665");
    check("синхронизация без цели",    ":CM#", "E9#", "");
    check("синхронизация без DEC",     ":Sr05:55:10#:CM#", "1E9#", "");

    fake_state = MOUNT_STATE_GOTO;
    check("синхронизация во время GoTo", ":Sr05:55:10#:Sd+07*24:25#:CM#", "11E5#", "sync 21310 26665");
    fake_state = MOUNT_STATE_FAULT;
    check("синхронизация в аварии",    ":Sr05:55:10#:Sd+07*24:25#:CM#", "11E7#", "sync 21310 26665");
    fake_state = MOUNT_STATE_IDLE;
}

// :GU# — то, что пульт спрашивает раз в 500 мс
static void test_status() {
    fake_state = MOUNT_STATE_IDLE;     fake_rate = MOUNT_RATE_SLEW;
    check("состояние после включения", ":GU#", "nNpEo280#", "");
    fake_state = MOUNT_STATE_TRACKING; fake_rate = MOUNT_RATE_GUIDE;
    check("ведёт, GUIDE",              ":GU#", "NpEo220#",  "");
    fake_state = MOUNT_STATE_GOTO;     fake_rate = MOUNT_RATE_CENTER;
    check("GoTo, CENTER",              ":GU#", "npEo250#",  "");
    fake_state = MOUNT_STATE_FAULT;    fake_rate = MOUNT_RATE_FIND;
    check("авария, FIND",              ":GU#", "nNpEo261#", "");
    fake_state = MOUNT_STATE_IDLE;     fake_rate = MOUNT_RATE_SLEW;
}

static void test_broken_input() {
    // Слишком длинная команда выбрасывается, следующая работает
    std::string longcmd = ":" + std::string(LX200_CMD_MAX_LEN + 5, 'A') + "#";
    check("слишком длинная команда", longcmd + ":Q#", "", "stop_all");

    // Обрывок без '#' дольше 1 с выбрасывается
    lx200_ctx_t ctx;
    lx200_ctx_init(&ctx, "test");
    calls.clear();
    fake_time_us = 0;
    feed(&ctx, ":Mw");                 // '#' так и не пришёл
    fake_time_us = 2 * 1000 * 1000;    // прошло 2 с
    feed(&ctx, "#:Q#");                // '#' от обрывка — мусор, дальше целая команда
    if (calls != "stop_all") {
        printf("FAIL зависший обрывок: вызовы \"%s\", ожидалось \"stop_all\"\n", calls.c_str());
        failures++;
    }
    fake_time_us = 0;
}

int main() {
    test_motion();
    test_tracking();
    test_ack_and_format();
    test_tolerance();
    test_coordinates();
    test_status();
    test_broken_input();

    if (failures == 0) {
        printf("OK: все проверки lx200 прошли\n");
        return 0;
    }
    printf("Ошибок: %d\n", failures);
    return 1;
}
