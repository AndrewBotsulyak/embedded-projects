#ifndef TMC_DRIVER_H
#define TMC_DRIVER_H

#include <cstdint>

#include "esp_err.h"

#include "axis-config.h"
#include "pins.h"

esp_err_t handle_drivers_connection();
// Полная настройка драйвера оси: шаги 0–11 по порядку (info/tmc-algorithm.md)
esp_err_t initialize_tmc_driver(axis_t a);

// Шаги настройки драйвера оси a (порядок — см. info/tmc-algorithm.md)
esp_err_t tmc_init_step_0(axis_t a);   // ENN = 1: силовая часть выключена
esp_err_t tmc_init_step_1(axis_t a);   // IOIN: связь, версия чипа, уровень ENN
esp_err_t tmc_init_step_2(axis_t a);   // GSTAT: аварии при старте, сброс флагов
esp_err_t tmc_init_step_3(axis_t a);   // CHOPCONF: TOFF = 0
esp_err_t tmc_init_step_4(axis_t a);   // GCONF
esp_err_t tmc_init_step_5(axis_t a);   // IHOLD_IRUN
esp_err_t tmc_init_step_6(axis_t a);   // TPOWERDOWN
esp_err_t tmc_init_step_7(axis_t a);   // PWMCONF
esp_err_t tmc_init_step_8(axis_t a);   // TPWMTHRS
esp_err_t tmc_init_step_9(axis_t a);   // TCOOLTHRS, SGTHRS, COOLCONF
esp_err_t tmc_init_step_10(axis_t a);  // VACTUAL
esp_err_t tmc_init_step_11(axis_t a);  // CHOPCONF: микрошаг и включение

// ENN = 0 и пауза 200 мс на автоподстройку AT#1
void tmc_driver_on(axis_t a);
void tmc_driver_off(axis_t a);

// Диагностика
// Проверка связи с драйвером оси a: версия чипа и уровни MS1/MS2/ENN. Не зависает, если драйвера нет.
esp_err_t tmc_check_connection(axis_t a);
esp_err_t tmc_log_drv_status(axis_t a);
void log_default_config(axis_t a);
void monitor_log_task(void* args);


/*
    Снимок состояния автоподстройки StealthChop.
    PWM_SCALE (0x71):
      биты 7..0   — PWM_SCALE_SUM: какую долю напряжения (0..255) драйвер подаёт сейчас;
      биты 24..16 — PWM_SCALE_AUTO: поправка регулятора, 9 бит СО ЗНАКОМ (-255..+255).
                    Близко к 0 = регулятор попадает в нужный ток без поправок.
    PWM_AUTO (0x72):
      биты 7..0   — PWM_OFS_AUTO  (результат AT#1);
      биты 23..16 — PWM_GRAD_AUTO (результат AT#2).
*/
struct tmc_at_state_t {
    uint8_t scale_sum;
    int16_t scale_auto;
    uint8_t ofs_auto;
    uint8_t grad_auto;
};

esp_err_t tmc_read_at_state(axis_t a, tmc_at_state_t *st);
esp_err_t tmc_check_overheat(axis_t a);
// Драйвер перенастроен: сбросить перегрев и повышенный ток перекладки
void tmc_overheat_reset(axis_t a);

// Повышенный ток перекладки (AXES[a].irun_slew): true — включить, false — обычный irun.
// Перегрев главнее: при otpw ток остаётся irun_hot. Регистр пишется только при смене
esp_err_t tmc_set_slew_boost(axis_t a, bool on);


#endif
