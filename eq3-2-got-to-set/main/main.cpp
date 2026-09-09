#include <stdio.h>

#include "Arduino.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "stepper.h"
#include "tmc-power.h"
#include "tmc-uart.h"

#define DIR_PIN  4
#define STEP_PIN 5

#define MICROSTEPS      16
#define STEPS_PER_REV   (200 * MICROSTEPS)   // = 3200 = 1 оборот

#define SPEED_HZ        2000   // шагов/с
#define ACCEL_STEPS_S2  1000   // шагов/с²

extern "C" void app_main(void)
{
    // без CONFIG_AUTOSTART_ARDUINO Arduino-слой инициализируем вручную
    initArduino();

    tmc_uart_init();

    // Без силового питания драйвер не отвечает, а настройки, отправленные
    // "в пустоту", теряются: подав питание позже, получишь чип на заводских
    // значениях. Поэтому сначала дожидаемся, пока он выйдет на связь.
    printf("Ждём силовое питание драйвера...\n");
    tmc_wait_for_power(0);   // 0 — ждать сколько потребуется

    tmc_took_reset();  // погасить флаг первого включения, дальше он значимый
    tmc_configure();
    tmc_check_communication();

    if (!stepper_init(STEP_PIN, DIR_PIN, SPEED_HZ, ACCEL_STEPS_S2)) {
        return;
    }

    while (true) {
        if (!tmc_driver_ready()) {
            // Шаги в обесточенный драйвер слать бессмысленно, а рампа при этом
            // продолжала бы разгоняться вхолостую. Гасим и ждём питания.
            stepper_emergency_stop();
            printf("Нет питания драйвера — ждём\n");
            tmc_wait_for_power(0);
            continue;  // настройку сделает tmc_driver_ready() по флагу GSTAT.reset
        }

        if (!stepper_move_watched(STEPS_PER_REV, tmc_is_alive)) {
            continue;
        }
        vTaskDelay(pdMS_TO_TICKS(500));

        if (!stepper_move_watched(-STEPS_PER_REV, tmc_is_alive)) {
            continue;
        }
        vTaskDelay(pdMS_TO_TICKS(500));
    }
}
