#include "motion.h"

#include <atomic>
#include <inttypes.h>

#include "esp_err.h"
#include "esp_log.h"
#include "esp_timer.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "freertos/task.h"

#include "stepper.h"
#include "tmc-driver.h"

static const char *TAG = "motion";

static const char *const STATE_NAME[] = { "IDLE", "TRACKING", "GOTO", "FAULT" };
static const char *const RATE_NAME[]  = { "GUIDE", "CENTER", "FIND", "SLEW" };

// Как часто задача просыпается без команд: проверить «GoTo закончилось?», «авария?»
// и «пульт перестал повторять движение?» (сторож связи срабатывает через 500..550 мс)
#define MOTION_POLL_MS 50

/*
    Очередь команд. Источники событий (кнопка, протокол) кладут сюда команду
    через motion_send(), а motion_task её забирает и выполняет.
*/
static QueueHandle_t motion_queue = nullptr;

// --- Состояние автомата: меняет только motion_task ---

// atomic: пишет motion_task, читать (motion_get_state) могут другие задачи
static std::atomic<motion_state_t> state{MOTION_STATE_IDLE};

// Скорость ручного движения. atomic: пишет motion_task, читать (motion_get_rate) могут другие задачи
static std::atomic<motion_rate_t> rate{MOTION_RATE_SLEW};

// Ручное движение по каждой оси: кнопка нажата (CMD_MOVE) и ещё не отпущена (CMD_STOP)
static struct {
    bool    moving;
    bool    forward;
    bool    keepalive;     // команду повторяют: без повтора MOTION_KEEPALIVE_MS — стоп (poll)
    int64_t last_move_us;  // когда пришёл последний CMD_MOVE этой оси
} manual[AXIS_COUNT] = {};

/*
    Повышенный ток перекладки (AXES[a].irun_slew). Порог — четверть скорости SLEW
    (~110× звёздной): выше него только SLEW и GoTo, FIND + ведение (65×) — ниже.

        поднять:   до разгона, как только заданная скорость выше порога (apply_axis, GoTo);
        опустить:  в poll(), когда ось РЕАЛЬНО затормозила ниже порога —
                   при торможении с полной скорости сила нужна так же, как при разгоне.
*/
static bool slew_wanted[AXIS_COUNT] = {};   // заданная скорость оси — перекладка

static bool is_slew_speed(axis_t a, uint32_t speed_mhz) {
    return speed_mhz > stepper_slew_speed_mhz(a) / 4;
}

static void set_state(motion_state_t s) {
    if (state == s) return;
    ESP_LOGI(TAG, "Состояние: %s → %s", STATE_NAME[state], STATE_NAME[s]);
    state = s;
}

/*
    Скорость ручного движения оси a в мГц (без знака).
    Звёздная скорость оси — axis_sidereal_mhz(a): для RA это ведение (57 936 мГц),
    для DEC — та же угловая скорость по небу (28 968 мГц: у DEC червяк 65, шагов вдвое меньше).
*/
static int32_t rate_speed_mhz(axis_t a) {
    const int32_t sidereal = (int32_t)axis_sidereal_mhz(a);
    switch (rate.load()) {
        case MOTION_RATE_GUIDE:  return sidereal / 2;   // 0.5×
        case MOTION_RATE_CENTER: return sidereal * 8;   // 8×
        case MOTION_RATE_FIND:   return sidereal * 64;  // 64×
        case MOTION_RATE_SLEW:   break;
    }
    return (int32_t)stepper_slew_speed_mhz(a);          // максимум
}

/*
    Посчитать, с какой скоростью сейчас должна крутиться ось a, и задать её мотору.
    Это главное правило автомата:

        основа  = звёздная, если ведём и это RA; иначе 0
        ручное  = ± скорость ручного движения, если кнопка нажата
        итог    = основа + ручное

    Поэтому правка во время ведения — это «ведение ± добавка», а отпускание
    кнопки возвращает RA к ведению, а не к нулю (info/fsm.md, раздел 2).
    В GOTO и FAULT ничего не делает: там скоростью управляет GoTo или сторож.
*/
static void apply_axis(axis_t a) {
    if (state == MOTION_STATE_GOTO || state == MOTION_STATE_FAULT) return;

    int32_t speed = 0;
    if (state == MOTION_STATE_TRACKING && a == AXIS_RA) {
        speed = (int32_t)axis_sidereal_mhz(AXIS_RA);
    }
    if (manual[a].moving) {
        speed += manual[a].forward ? rate_speed_mhz(a) : -rate_speed_mhz(a);
    }

    ESP_LOGI(TAG, "[%s] скорость %" PRId32 " мГц (%.2f× звёздной)",
             AXES[a].name, speed, (double)speed / axis_sidereal_mhz(a));

    // Ток поднять ДО разгона; опускает poll(), когда ось затормозит
    slew_wanted[a] = is_slew_speed(a, (uint32_t)(speed < 0 ? -speed : speed));
    if (slew_wanted[a]) {
        tmc_set_slew_boost(a, true);
    }
    stepper_run_mhz(a, speed);
}

static void apply_all_axes() {
    for (int i = 0; i < AXIS_COUNT; i++) {
        apply_axis((axis_t)i);
    }
}

static void clear_manual() {
    for (int i = 0; i < AXIS_COUNT; i++) {
        manual[i].moving = false;
    }
}

// Прервать GoTo: дальше — ведение (как после успешного GoTo), оси тормозят плавно
static void abort_goto() {
    ESP_LOGW(TAG, "GoTo прерван");
    set_state(MOTION_STATE_TRACKING);
    apply_all_axes();   // RA — к скорости ведения, DEC — стоп
}

// --- Обработка команд: что значит команда в текущем состоянии (info/fsm.md, раздел 4) ---

static void handle_cmd(const motion_cmd_t &cmd) {
    // В аварии принимаем только команды, которые не запускают движение и не меняют
    // состояние: стоп, «стоп всего», выбор скорости. Из FAULT выводит только сторож (poll)
    if (state == MOTION_STATE_FAULT && cmd.cmd != CMD_STOP && cmd.cmd != CMD_ABORT
        && cmd.cmd != CMD_SET_RATE) {
        ESP_LOGW(TAG, "Команда %d отклонена: авария драйвера, движение заблокировано", cmd.cmd);
        return;
    }

    switch (cmd.cmd) {
        case CMD_SET_RATE:
            rate = cmd.rate;
            ESP_LOGI(TAG, "Скорость ручного движения: %s", RATE_NAME[rate.load()]);
            // Кнопка уже нажата — сразу перейти на новую скорость
            for (int i = 0; i < AXIS_COUNT; i++) {
                if (manual[i].moving) apply_axis((axis_t)i);
            }
            break;

        case CMD_MOVE: {
            manual[cmd.axis].last_move_us = esp_timer_get_time();
            manual[cmd.axis].keepalive = cmd.keepalive;

            // Повтор: ось уже едет туда же — только продлили время, скорость не трогаем
            bool repeat = state != MOTION_STATE_GOTO && manual[cmd.axis].moving
                          && manual[cmd.axis].forward == cmd.isForward;
            if (repeat) break;

            // Стрелка во время GoTo прерывает его (решение из info/fsm.md, раздел 8)
            if (state == MOTION_STATE_GOTO) {
                abort_goto();
            }
            manual[cmd.axis].moving = true;
            manual[cmd.axis].forward = cmd.isForward;
            apply_axis(cmd.axis);
            break;
        }

        case CMD_STOP:
            manual[cmd.axis].moving = false;
            apply_axis(cmd.axis);   // RA при ведении — назад к ведению; иначе — стоп
            break;

        case CMD_TRACK:
            if (state == MOTION_STATE_GOTO) {
                // После GoTo ведение включается всегда; выключить можно после, CMD_TRACK off
                ESP_LOGW(TAG, "Ведение во время GoTo не меняется: после GoTo оно включится само");
                break;
            }
            set_state(cmd.on ? MOTION_STATE_TRACKING : MOTION_STATE_IDLE);
            apply_axis(AXIS_RA);
            break;

        case CMD_GOTO:
            clear_manual();
            set_state(MOTION_STATE_GOTO);
            for (int i = 0; i < AXIS_COUNT; i++) {
                // GoTo едет на скорости SLEW — ток поднять до старта
                slew_wanted[i] = true;
                tmc_set_slew_boost((axis_t)i, true);
                stepper_move_to_async((axis_t)i, cmd.target[i]);
            }
            break;

        case CMD_ABORT:
            clear_manual();
            if (state != MOTION_STATE_FAULT) {
                set_state(MOTION_STATE_IDLE);
                // в GOTO apply_axis ничего не делает, поэтому состояние сменили ДО него
                apply_all_axes();
            }
            break;
    }
}

// --- Проверки без команд: раз в MOTION_POLL_MS ---

static void poll() {
    bool blocked = stepper_is_blocked();

    // Сторож нашёл аварию: моторы он уже остановил (stepper_emergency_stop)
    if (blocked && state != MOTION_STATE_FAULT) {
        clear_manual();
        for (int i = 0; i < AXIS_COUNT; i++) {
            slew_wanted[i] = false;   // ток опустит проверка ниже, когда авария снята
        }
        set_state(MOTION_STATE_FAULT);
        return;
    }

    // Сторож снял блокировку: ведение после аварии НЕ возобновляем — позиция могла сбиться
    if (!blocked && state == MOTION_STATE_FAULT) {
        set_state(MOTION_STATE_IDLE);
        ESP_LOGW(TAG, "Авария снята. Ведение выключено: проверь наведение и включи ведение");
        return;
    }

    // Сторож связи: пульт перестал повторять CMD_MOVE — остановить ось, как по CMD_STOP
    int64_t now = esp_timer_get_time();
    for (int i = 0; i < AXIS_COUNT; i++) {
        if (manual[i].moving && manual[i].keepalive
            && now - manual[i].last_move_us > (int64_t)MOTION_KEEPALIVE_MS * 1000) {
            ESP_LOGW(TAG, "[%s] нет повтора движения %d мс — связь с пультом потеряна, стоп",
                     AXES[i].name, MOTION_KEEPALIVE_MS);
            manual[i].moving = false;
            apply_axis((axis_t)i);   // RA при ведении — назад к ведению; иначе — стоп
        }
    }

    // GoTo закончилось: обе оси стоят → ведение
    if (state == MOTION_STATE_GOTO && !stepper_is_running(AXIS_RA) && !stepper_is_running(AXIS_DEC)) {
        ESP_LOGI(TAG, "GoTo: на месте");
        set_state(MOTION_STATE_TRACKING);
        slew_wanted[AXIS_DEC] = false;
        apply_axis(AXIS_RA);   // пересчитает slew_wanted[RA]
    }

    // Перекладка закончилась и ось затормозила — вернуть обычный ток
    // В GOTO ток нужен до конца; в FAULT драйвер трогает только сторож —
    // ток вернётся после снятия аварии (или его сбросит перенастройка драйвера)
    if (state != MOTION_STATE_GOTO && state != MOTION_STATE_FAULT) {
        for (int i = 0; i < AXIS_COUNT; i++) {
            if (!slew_wanted[i] && !is_slew_speed((axis_t)i, stepper_current_speed_mhz((axis_t)i))) {
                tmc_set_slew_boost((axis_t)i, false);   // пишет регистр, только если ток был повышен
            }
        }
    }
}

// Задача управления мотором: единственная, кто трогает stepper
void motion_task(void* args) {
    motion_cmd_t cmd;

    while (true) {
        // Ждём команду не дольше MOTION_POLL_MS: даже без команд нужно
        // заметить конец GoTo и аварию
        if (xQueueReceive(motion_queue, &cmd, pdMS_TO_TICKS(MOTION_POLL_MS)) == pdTRUE) {
            handle_cmd(cmd);
        }
        poll();
    }
}

/*
    Создать очередь команд и запустить motion_task.
    Вызывать один раз, после stepper_init().
*/
esp_err_t motion_start() {
    motion_queue = xQueueCreate(8, sizeof(motion_cmd_t));   // до 8 команд в очереди
    if (motion_queue == nullptr) {
        ESP_LOGE(TAG, "motion_start: не удалось создать очередь команд");
        return ESP_ERR_NO_MEM;
    }

    if (xTaskCreate(motion_task, "motion", 4096, nullptr, 5, nullptr) != pdPASS) {
        ESP_LOGE(TAG, "motion_start: не удалось создать задачу motion");
        return ESP_ERR_NO_MEM;
    }

    return ESP_OK;
}

/*
    Отправить команду мотору (из обычной задачи, например протокола).
    Не ждёт: если очередь полна, команда отбрасывается и возвращается ошибка.
*/
esp_err_t motion_send(motion_cmd_t cmd, uint32_t timeout) {
    if (motion_queue == nullptr || xQueueSend(motion_queue, &cmd, timeout) != pdTRUE) {
        ESP_LOGW(TAG, "motion_send: команда %d не принята (очередь не создана или полна)", cmd.cmd);
        return ESP_FAIL;
    }
    return ESP_OK;
}

esp_err_t motion_set_rate(motion_rate_t r) {
    motion_cmd_t cmd = {};
    cmd.cmd = CMD_SET_RATE;
    cmd.rate = r;
    return motion_send(cmd);
}

esp_err_t motion_move(axis_t a, bool forward, bool keepalive) {
    motion_cmd_t cmd = {};
    cmd.cmd = CMD_MOVE;
    cmd.axis = a;
    cmd.isForward = forward;
    cmd.keepalive = keepalive;
    return motion_send(cmd);
}

esp_err_t motion_stop(axis_t a) {
    motion_cmd_t cmd = {};
    cmd.cmd = CMD_STOP;
    cmd.axis = a;
    return motion_send(cmd, portMAX_DELAY);
}

esp_err_t motion_track(bool on) {
    motion_cmd_t cmd = {};
    cmd.cmd = CMD_TRACK;
    cmd.on = on;
    return motion_send(cmd);
}

esp_err_t motion_goto(int32_t ra_steps, int32_t dec_steps) {
    motion_cmd_t cmd = {};
    cmd.cmd = CMD_GOTO;
    cmd.target[AXIS_RA] = ra_steps;
    cmd.target[AXIS_DEC] = dec_steps;
    return motion_send(cmd);
}

esp_err_t motion_abort() {
    motion_cmd_t cmd = {};
    cmd.cmd = CMD_ABORT;
    return motion_send(cmd, portMAX_DELAY);
}

motion_state_t motion_get_state() {
    return state;
}

motion_rate_t motion_get_rate() {
    return rate.load();
}
