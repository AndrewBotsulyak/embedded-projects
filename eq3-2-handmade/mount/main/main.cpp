#include "driver/gpio.h"
#include "esp_attr.h"
#include "esp_err.h"

#include "esp_log.h"
#include "esp_timer.h"
#include "freertos/idf_additions.h"
#include "freertos/projdefs.h"
#include "lx200_espnow.h"
#include "lx200_usb.h"
#include "motion.h"
#include "pins.h"
#include "portmacro.h"
#include "stepper.h"
#include "tmc-driver.h"
#include "tmc-err-codes.h"
#include "tmc-error.h"
#include "tmc-regs.h"
#include "tmc-uart.h"
#include <cstdint>
#include <inttypes.h>
#include <stdint.h>
#include "axis-config.h"
// #include "freertos/task.h"


static const char* TAG = "main.cpp";

extern "C" void app_main(void)
{
    tmc_uart_init();

    // настройка и проверка драйверов TMC
    esp_err_t err_drivers = handle_drivers_connection();

    if (err_drivers == ESP_ERR_TMC_RA_NOT_CONFIGURED) {
        ESP_LOGE(TAG, "app_main: драйвер RA не настроен: %s", tmc_err_to_name(err_drivers));
        return;                                  // без RA работать нельзя
    }
    bool dec_ok = (err_drivers == ESP_OK);

    // инициализация FastAccelStepper
    if (stepper_init() != ESP_OK) return;
    // Задача движения (автомат): после stepper_init, ей нужны подключённые моторы
    motion_start();
    tmc_driver_on(AXIS_RA);                // ENN = 0 + 200 мс → AT#1
    if (dec_ok) {
        tmc_driver_on(AXIS_DEC);           // ENN = 0 + 200 мс → AT#1 для DEC
    }

    // if(xTaskCreate(monitor_log_task, "monitor_log_task", 2048, nullptr, 3, nullptr) != pdPASS) {
    //     ESP_LOGE(TAG, "app_main: не удалось создать задачу monitor_log_task");
    //     return;
    // }

    // Сторож проверяет только настроенные драйверы (не подключённая ось не должна
    // останавливать работающую — аварийная остановка действует на ВСЕ оси)
    tmc_watchdog_watch(AXIS_RA);
    if (dec_ok) {
        tmc_watchdog_watch(AXIS_DEC);
    }

    if(xTaskCreate(tmc_watchdog_task, "tmc_watchdog", 4096, nullptr, 10, nullptr) != pdPASS) {
        ESP_LOGE(TAG, "app_main: не удалось создать задачу tmc_watchdog");
        return;
    }

    // uint8_t grad;
    // if (tmc_calibrate_at2(AXIS_RA, axis_motor_steps_per_rev(AXIS_RA) * 3 / 2, 8, &grad) == ESP_OK) {   // 1 об/с, до 8 проходов
    //     ESP_LOGI(TAG, "PWM_GRAD подобран: %u", grad);
    //     // сюда позже: tmc_pwm_grad_save() — сохранить в NVS (todo, пункт 4)
    // }

    // Команды LX200 (Stellarium, терминал) через разъём USB; прошивка и логи — через COM.
    // Ошибка не останавливает программу: сторож работает и без него
    lx200_usb_start();

    // Команды LX200 от пульта по ESP-NOW; первые 30 с после включения — режим сопряжения
    lx200_espnow_start();

    // Шаг 3: калибровка AT#2 для DEC — найденное значение записать в AXES[AXIS_DEC].pwm_grad
    // uint8_t grad_dec;
    // if (tmc_calibrate_at2(AXIS_DEC, axis_motor_steps_per_rev(AXIS_DEC), 8, &grad_dec) == ESP_OK) {
    //     ESP_LOGI(TAG, "[DEC] PWM_GRAD подобран: %u", grad_dec);
    // }

    
    // motion_move(AXIS_RA, true);
}
