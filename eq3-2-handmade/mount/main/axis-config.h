#ifndef AXIS_CONFIG_H
#define AXIS_CONFIG_H

#include <cstdint>

#include "hal/gpio_types.h"

#include "pins.h"          // пины осей — задаются только там
#include "tmc-current.h"   // tmc_ma_to_cs(): миллиамперы → шкала тока CS

// ============================================================================
//  НАСТРОЙКИ ОСЕЙ
// ============================================================================
//
//  У каждой оси свой драйвер TMC2209 и свой мотор. Всё, чем оси отличаются,
//  собрано здесь: адрес драйвера на UART, пины, токи, калибровка StealthChop,
//  микрошаг и механика (червяк, ремень).
//
//  План перехода на две оси: info/two-axes.md
//  Свободные пины ESP32-S3:   info/esp32-pins.md
// ============================================================================

enum axis_t {
    AXIS_RA  = 0,   // прямое восхождение: ведение за небом
    AXIS_DEC = 1,   // склонение
    AXIS_COUNT
};

struct axis_config_t {
    const char *name;          // "RA" / "DEC" — для логов

    // --- Железо ---
    uint8_t     uart_addr;     // адрес драйвера на общем UART: задаётся пинами MS1/MS2 модуля
    gpio_num_t  en_pin;        // ENN драйвера (1 = выключен), подтяжка 10 кΩ к 3.3 В
    gpio_num_t  step_pin;      // импульсы шагов
    gpio_num_t  dir_pin;       // направление

    // --- Драйвер ---
    uint8_t     irun;          // ток в движении, шкала CS 0..31 (из миллиампер через tmc_ma_to_cs)
    uint8_t     ihold;         // ток в покое
    uint8_t     irun_hot;      // пониженный ток в движении при перегреве драйвера (otpw, 120 °C)
    uint8_t     irun_slew;     // повышенный ток на скорости перекладки (SLEW, GoTo): больше силы
    uint8_t     pwm_grad;      // PWM_GRAD для StealthChop — результат калибровки AT#2 этого мотора
    uint8_t     mres;          // микрошаг в CHOPCONF.MRES: 0 = 1/256, 1 = 1/128, 2 = 1/64, 3 = 1/32 ...
    bool        shaft;         // GCONF.shaft: true — инвертировать направление

    // --- Механика ---
    uint32_t    full_steps;    // полных шагов мотора на оборот (200 для 1.8°)
    uint32_t    microsteps;    // микрошагов на полный шаг — должно совпадать с mres
    uint32_t    worm_teeth;    // зубьев червячного колеса оси
    uint32_t    belt_ratio;    // передаточное число ремня (1 = мотор прямо на червяке)
};

// Порядок элементов = порядок в enum axis_t: сначала RA, потом DEC.
// В C++ поля перечисляются строго в порядке объявления в структуре.
inline constexpr axis_config_t AXES[AXIS_COUNT] = {
    {   // AXIS_RA — мотор 42BYGH39-401A (1.5 А), ремень 3:1
        .name       = "RA",
        .uart_addr  = 0,                    // MS1 = GND, MS2 = GND
        .en_pin     = RA_EN_PIN,
        .step_pin   = RA_STEP_PIN,
        .dir_pin    = RA_DIR_PIN,
        .irun       = tmc_ma_to_cs(720),    // CS 22 → 702 мА (vsense = 1, см. tmc-current.h; ремень 3:1)
        .ihold      = tmc_ma_to_cs(350),    // CS 10 → 336 мА — червяк держит ось сам
        .irun_hot   = tmc_ma_to_cs(600),    // CS 18 → 580 мА
        .irun_slew  = tmc_ma_to_cs(978),    // CS 31 → 978 мА — максимум при vsense = 1
        .pwm_grad   = 36,                   // калибровка AT#2 на 12 В
        .mres       = 2,                    // 1/64
        .shaft      = false,
        .full_steps = 200,
        .microsteps = 64,
        .worm_teeth = 130,
        .belt_ratio = 3,
    },
    {   // AXIS_DEC — ремень 3:1, как у RA; токи и зубья уточнить по шагам из info/two-axes.md
        .name       = "DEC",
        .uart_addr  = 1,                    // MS1 = 3.3 В, MS2 = GND
        .en_pin     = DEC_EN_PIN,
        .step_pin   = DEC_STEP_PIN,
        .dir_pin    = DEC_DIR_PIN,
        .irun       = tmc_ma_to_cs(720),    // CS 22 → 702 мА, как у RA
        .ihold      = tmc_ma_to_cs(350),    // CS 10 → 336 мА
        .irun_hot   = tmc_ma_to_cs(600),    // CS 18 → 580 мА
        .irun_slew  = tmc_ma_to_cs(978),    // CS 31 → 978 мА, как у RA
        .pwm_grad   = 36,                   // ⚠️ сделать отдельную калибровку AT#2 для DEC
        .mres       = 2,                    // 1/64
        .shaft      = false,                // ⚠️ проверить направление
        .full_steps = 200,
        .microsteps = 64,
        .worm_teeth = 65,                   // ⚠️ источники расходятся (65 или 130) — посчитать зубья
        .belt_ratio = 3,
    },
};

// ============================================================================
//  ПРОИЗВОДНЫЕ ВЕЛИЧИНЫ
// ============================================================================

// Шагов (импульсов STEP) на один оборот ВАЛА МОТОРА = шагов мотора × микрошаг
constexpr uint32_t axis_motor_steps_per_rev(axis_t a)
{
    return AXES[a].full_steps * AXES[a].microsteps;
}

// Шагов (импульсов STEP) на полный оборот оси = шагов мотора × микрошаг × червяк × ремень
constexpr uint64_t axis_steps_per_rev(axis_t a)
{
    return (uint64_t)AXES[a].full_steps * AXES[a].microsteps
         * AXES[a].worm_teeth * AXES[a].belt_ratio;
}

/*
    Скорость ведения в миллигерцах (для setSpeedInMilliHz):
    ось делает 1 оборот за звёздные сутки = 86 164.0905 с.

        мГц = шагов на оборот / 86 164.0905 × 1000

    Считаем в целых числах: 86 164.0905 × 10 000 = 861 640 905,
    поэтому мГц = шаги × 10 000 000 / 861 640 905, с округлением к ближайшему.
*/
constexpr uint32_t axis_sidereal_mhz(axis_t a)
{
    constexpr uint64_t SIDEREAL_DAY_X10000 = 861640905ULL;
    return (uint32_t)((axis_steps_per_rev(a) * 10000000ULL + SIDEREAL_DAY_X10000 / 2)
                      / SIDEREAL_DAY_X10000);
}

// ============================================================================
//  ПРОВЕРКИ ПРИ СБОРКЕ
// ============================================================================

// Микрошаг: MRES и microsteps должны описывать одно и то же (256 >> MRES)
constexpr bool axis_microsteps_match(axis_t a)
{
    return AXES[a].mres <= 8 && AXES[a].microsteps == (256u >> AXES[a].mres);
}

constexpr bool axis_currents_ok(axis_t a)
{
    return AXES[a].irun >= 16                  // ниже — грубый микрошаг
        && AXES[a].ihold > 0                   // 0 включает свободное вращение (freewheel)
        && AXES[a].ihold <= AXES[a].irun       // в покое ток не больше, чем в движении
        && AXES[a].irun_hot >= 16              // пониженный ток — тоже не ниже 16
        && AXES[a].irun_hot < AXES[a].irun     // и действительно меньше рабочего
        && AXES[a].ihold <= AXES[a].irun_hot   // и не меньше тока покоя
        && AXES[a].irun_slew >= AXES[a].irun   // ток перекладки не меньше рабочего
        && AXES[a].irun_slew <= 31;            // и в пределах шкалы CS
}

static_assert(axis_microsteps_match(AXIS_RA),  "RA: microsteps не совпадает с MRES (256 >> MRES)");
static_assert(axis_microsteps_match(AXIS_DEC), "DEC: microsteps не совпадает с MRES (256 >> MRES)");
static_assert(axis_currents_ok(AXIS_RA),  "RA: проверь токи (IRUN, IHOLD, IRUN_HOT, IRUN_SLEW)");
static_assert(axis_currents_ok(AXIS_DEC), "DEC: проверь токи (IRUN, IHOLD, IRUN_HOT, IRUN_SLEW)");
static_assert(AXES[AXIS_RA].uart_addr != AXES[AXIS_DEC].uart_addr, "у осей одинаковый адрес UART");
static_assert(AXES[AXIS_RA].uart_addr <= 3 && AXES[AXIS_DEC].uart_addr <= 3, "адрес TMC2209 — 0..3");

// Контроль для RA (1/64, червяк 130, ремень 3:1): 200 × 64 × 130 × 3 и скорость ведения.
// Если поменяешь микрошаг, червяк или ремень RA — обнови эти две строки.
static_assert(axis_steps_per_rev(AXIS_RA) == 4992000, "RA: шагов на оборот изменилось");
static_assert(axis_sidereal_mhz(AXIS_RA)  == 57936,   "RA: скорость ведения изменилась");

#endif
