#ifndef STEPPER_H
#define STEPPER_H

#include <cstdint>

#include "esp_err.h"

#include "pins.h"

#include "axis-config.h"

// Шагов на оборот мотора, оси, скорость ведения — в axis-config.h:
// axis_motor_steps_per_rev(a), axis_steps_per_rev(a), axis_sidereal_mhz(a)

// Подключить FastAccelStepper к пинам STEP и DIR всех используемых осей
esp_err_t stepper_init();

// Калибровка AT#2 оси a: подбор PWM_GRAD_AUTO движением на средней скорости
esp_err_t tmc_calibrate_at2(axis_t a, uint32_t speed_hz, uint8_t max_legs, uint8_t *grad_out);

// Авария: остановить ВСЕ оси и заблокировать движение
void stepper_emergency_stop();
void stepper_unblock();
bool stepper_is_blocked();

// --- Неблокирующие функции для автомата в motion_task ---

// Скорость перекладки оси a в мГц: максимум для ручного движения и GoTo
uint32_t stepper_slew_speed_mhz(axis_t a);

// Крутить ось a: speed_mhz > 0 вперёд, < 0 назад, 0 — плавный стоп. Не ждёт
esp_err_t stepper_run_mhz(axis_t a, int32_t speed_mhz);

// GoTo оси a в позицию (шаги) на скорости перекладки. Не ждёт
esp_err_t stepper_move_to_async(axis_t a, int32_t position);

// Ось a сейчас движется (разгон, торможение или ход)?
bool stepper_is_running(axis_t a);

// Текущая скорость оси a в мГц по модулю (с учётом разгона и торможения); 0 — стоит
uint32_t stepper_current_speed_mhz(axis_t a);

// Текущая позиция оси a в шагах (0 — где ось была при включении). Можно из любой задачи
int32_t stepper_get_position(axis_t a);

#endif
