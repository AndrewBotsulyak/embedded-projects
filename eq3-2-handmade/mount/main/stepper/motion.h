#ifndef MOTION_H
#define MOTION_H

#include "esp_err.h"
#include <cstdint>

#include "axis-config.h"

// ============================================================================
//  ЗАДАЧА ДВИЖЕНИЯ: автомат (FSM) монтировки — info/fsm.md
// ============================================================================
//
//  Команды не говорят «какой режим», только что сделать: «скорость = правка»,
//  «ось RA на запад», «стоп RA». Что это значит, решает состояние монтировки:
//  например, STOP по RA во время ведения возвращает ось к скорости ведения, а не к нулю.
//
//  Отправлять команды удобнее функциями motion_move(), motion_stop() ... (ниже),
//  а не заполнять motion_cmd_t руками.
// ============================================================================

// Команды для задачи движения
enum e_motion_cmd_t {
    CMD_SET_RATE,   // скорость ручного движения (rate)
    CMD_MOVE,       // ось axis едет в направлении isForward, пока не придёт CMD_STOP
    CMD_STOP,       // ось axis: прекратить ручное движение
    CMD_TRACK,      // ведение: on = true — включить, false — выключить
    CMD_GOTO,       // обе оси едут в позиции target[] (шаги), потом ведение
    CMD_ABORT,      // стоп всего: ручное движение, GoTo и ведение
};

// Скорость ручного движения, в долях звёздной скорости оси (info/fsm.md, раздел 5)
enum motion_rate_t {
    MOTION_RATE_GUIDE,    // 0.5× — правка во время ведения
    MOTION_RATE_CENTER,   // 8×   — центрирование в окуляре
    MOTION_RATE_FIND,     // 64×  — поиск в искателе
    MOTION_RATE_SLEW,     // максимум (скорость перекладки)
};

// Состояние монтировки
enum motion_state_t {
    MOTION_STATE_IDLE,       // стоит, ведения нет
    MOTION_STATE_TRACKING,   // ось RA ведёт со звёздной скоростью
    MOTION_STATE_GOTO,       // обе оси едут к цели; по окончании — ведение
    MOTION_STATE_FAULT,      // авария драйвера, движение заблокировано (сторож)
};

// Сторож связи (info/fsm.md, раздел 7): CMD_MOVE с keepalive = true источник повторяет,
// пока кнопка зажата (пульт — раз в 200 мс). Повтора нет дольше этого — ось останавливается
#define MOTION_KEEPALIVE_MS 500

// Команда задаче движения. Используются только поля, нужные этой команде.
typedef struct {
    e_motion_cmd_t cmd;
    axis_t         axis;                 // CMD_MOVE, CMD_STOP
    bool           isForward;            // CMD_MOVE: true — вперёд (RA: запад, DEC: север)
    bool           keepalive;            // CMD_MOVE: источник повторяет команду (пульт);
                                         //   без повтора MOTION_KEEPALIVE_MS — стоп оси
    bool           on;                   // CMD_TRACK
    motion_rate_t  rate;                 // CMD_SET_RATE
    int32_t        target[AXIS_COUNT];   // CMD_GOTO: позиции осей в шагах
} motion_cmd_t;


// Создать очередь команд и запустить задачу движения (после stepper_init)
esp_err_t motion_start();

// Положить команду в очередь (из обычной задачи). timeout в тиках, 0 — не ждать
esp_err_t motion_send(motion_cmd_t cmd, uint32_t timeout = 0);

// --- Удобные обёртки над motion_send ---

esp_err_t motion_set_rate(motion_rate_t rate);
// keepalive = true — источник будет повторять команду, без повтора ось встанет сама
esp_err_t motion_move(axis_t a, bool forward, bool keepalive = false);
esp_err_t motion_stop(axis_t a);          // ждёт места в очереди: стоп терять нельзя
esp_err_t motion_track(bool on);
esp_err_t motion_goto(int32_t ra_steps, int32_t dec_steps);
esp_err_t motion_abort();                 // ждёт места в очереди: стоп терять нельзя

// Текущее состояние (для логов, пульта, LX200)
motion_state_t motion_get_state();

// Текущая скорость ручного движения (для пульта, LX200 :GU#)
motion_rate_t motion_get_rate();

#endif
