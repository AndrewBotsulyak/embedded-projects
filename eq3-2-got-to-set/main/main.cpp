#include <cstdint>
#include <stdio.h>

#include "Arduino.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "stepper.h"
#include "tmc-power.h"
#include "tmc-uart.h"

// Пины оси RA. Для DEC понадобится своя пара STEP/DIR, а драйвер DEC сядет
// на ту же линию UART с другим адресом (MS1 подтянут вверх) — см. tmc-uart.h.
#define DIR_PIN  4
#define STEP_PIN 5

// Кинематика (микрошаг, зубья червяка, ремень) задана в stepper.h —
// оттуда же берётся STEPPER_STEPS_PER_MOTOR_REV = 3200 = оборот вала.

#define SLEW_SPEED_HZ   2000   // шагов/с на перекладке
#define ACCEL_STEPS_S2  1000   // шагов/с²

extern "C" void app_main(void)
{
    // без CONFIG_AUTOSTART_ARDUINO Arduino-слой инициализируем вручную
    initArduino();

    // Поднимаем линию UART до драйверов. Она одна на все оси.
    tmc_uart_init();

    // Без силового питания драйвер не отвечает, а настройки, отправленные
    // "в пустоту", теряются: подав питание позже, получишь чип на заводских
    // значениях. Поэтому сначала дожидаемся, пока выйдут на связь все оси.
    printf("Ждём силовое питание драйверов (осей: %d)...\n", TMC_AXES_PRESENT);
    tmc_wait_for_all(0);   // 0 — ждать сколько потребуется

    // Каждая ось получает свои токи из AXIS1_*/AXIS2_* в tmc-uart.h.
    tmc_configure_all();

    // Скорость перекладки — целые шаги в секунду, дробная часть тут не важна.
    // Для ведения период считает stepper_sidereal_ticks() из передаточного числа.
    // Подключаем мотор RA к генератору шагов. Не вышло (нет свободного
    // аппаратного канала) — работать дальше бессмысленно, выходим.
    if (!stepper_init(STEP_PIN, DIR_PIN,
                      STEPPER_HZ_TO_TICKS(SLEW_SPEED_HZ), ACCEL_STEPS_S2)) {
        return;
    }

    // Целочисленный вывод намеренно: форматирование %f в ESP-IDF зависит от
    // опции nano-formatting и на части конфигураций молча печатает мусор.
    // Период одного шага ведения в тиках.
    uint32_t sid    = stepper_sidereal_ticks();
    // Тот же период в микросекундах: в одной микросекунде 16 тиков.
    uint32_t per_us = sid / (STEPPER_TICKS_PER_S / 1000000UL);
    // Частота шагов, умноженная на 1000 (миллигерцы), — чтобы напечатать
    // дробную часть без float: 4827 мГц выведем как «4.827».
    uint32_t mhz    = (uint32_t)(STEPPER_TICKS_PER_S * 1000ULL / sid);
    // В printf ниже «/ 1000» даёт целую часть, «% 1000» — остаток от деления,
    // то есть три цифры после точки. «%03lu» дополняет их нулями слева: 7 → 007.
    printf("Ведение RA: %lu тиков = %lu.%03lu мс на шаг = %lu.%03lu шага/с "
           "(%lu микрошагов на оборот оси, червяк %d:1, ремень %d:%d)\n",
           (unsigned long)sid,
           (unsigned long)(per_us / 1000), (unsigned long)(per_us % 1000),
           (unsigned long)(mhz / 1000),    (unsigned long)(mhz % 1000),
           (unsigned long)AXIS1_STEPS_PER_REV,
           AXIS1_WORM_TEETH, AXIS1_BELT_NUM, AXIS1_BELT_DEN);
    printf("DEC: %lu микрошагов на оборот оси, червяк %d:1, ремень %d:%d\n",
           (unsigned long)AXIS2_STEPS_PER_REV,
           AXIS2_WORM_TEETH, AXIS2_BELT_NUM, AXIS2_BELT_DEN);

    // Главный цикл — крутится вечно. Сейчас это тестовая программа:
    // оборот вала вперёд, пауза, оборот назад, пауза, и так по кругу.
    uint32_t counter = 0;
    while (true) {
        counter++;
        printf("START: counter %lu\n", counter);
        // Перед каждым движением проверяем, что все драйверы запитаны
        // и не перезапускались. Сама проверка ничего не настраивает.
        if (!tmc_all_ready()) {
            printf("START: inside if (!tmc_all_ready())\n");
            // Шаги в обесточенный драйвер слать бессмысленно, а рампа при этом
            // продолжала бы разгоняться вхолостую. Гасим и ждём питания.
            stepper_emergency_stop();
            // «Не готов» — это либо нет ответа, либо был сброс чипа.
            // Печатаем, что именно, иначе по логу их не различить.
            printf("Драйверы не готовы — ждём и настраиваем заново\n");
            tmc_print_status_all();
            tmc_wait_for_all(0);
            // Все ответили — настраиваем заново. Безусловно: сюда попадаем
            // только если драйвер пропадал или сбрасывался, а значит,
            // его регистры в любом случае на заводских значениях.
            tmc_configure_all();
            printf("END: inside if (!tmc_all_ready())\n");
            continue;  // на новом круге tmc_all_ready() проверит, что настройка легла
        }

        // Один оборот вала вперёд (3200 микрошагов). Сторож tmc_all_alive
        // оборвёт движение, если по дороге отвалится любой драйвер.
        // «continue» — не доехали: пропускаем остаток цикла и идём
        // на новый круг, где снова проверим питание.
        if (!stepper_move_watched(STEPPER_STEPS_PER_MOTOR_REV, tmc_all_alive)) {
            printf("inside if (!stepper_move_watched(STEPPER_STEPS_PER_MOTOR_REV, tmc_all_alive))");
            continue;
        }
        // Пауза полсекунды.
        vTaskDelay(pdMS_TO_TICKS(500));

        // Тот же оборот назад: минус перед числом шагов меняет направление.
        // «(int32_t)» нужен, потому что число шагов беззнаковое, а минус
        // у беззнакового числа дал бы не отрицательное, а огромное значение.
        if (!stepper_move_watched(-(int32_t)STEPPER_STEPS_PER_MOTOR_REV, tmc_all_alive)) {
            printf("inside if (!stepper_move_watched(-(int32_t)STEPPER_STEPS_PER_MOTOR_REV, tmc_all_alive))");
            continue;
        }

        printf("END: counter %lu\n", counter);
        vTaskDelay(pdMS_TO_TICKS(500));
    }
}
