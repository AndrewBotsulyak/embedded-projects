/*
    Проверки модели неба на компьютере, без платы.

    Запуск (из папки main/astro):
        c++ -std=c++17 -Wall -Wextra -I. host_test/test_astro.cpp astro.cpp \
            -o /tmp/test_astro && /tmp/test_astro

    Ошибка → строка с FAIL и код выхода 1.
*/
#include <cmath>
#include <cstdio>

#include "astro.h"

// Механика монтировки (axis-config.h): 200 × 64 × червяк × ремень 3
static const uint32_t RA_STEPS  = 4992000;   // червяк 130
static const uint32_t DEC_STEPS = 2496000;   // червяк 65

static const int64_t SEC  = 1000 * 1000;     // мкс
static const int64_t HOUR = 3600 * SEC;

static int failures = 0;

// Сравнение с допуском: 1″ по DEC и 0.1 с времени по RA
#define TOL_DEC_DEG (1.0 / 3600)
#define TOL_RA_H    (0.1 / 3600)

// Разница RA с учётом перехода через 0/24 ч
static double ra_diff(double a, double b) {
    double d = std::fmod(a - b + 36.0, 24.0) - 12.0;
    return std::fabs(d);
}

static void check(const char *title, const astro_model_t *m, int32_t ra_steps, int32_t dec_steps,
                  int64_t t_us, double expect_ra_h, double expect_dec_deg) {
    double ra, dec;
    astro_get(m, ra_steps, dec_steps, t_us, &ra, &dec);
    if (ra_diff(ra, expect_ra_h) > TOL_RA_H || std::fabs(dec - expect_dec_deg) > TOL_DEC_DEG) {
        printf("FAIL %s: RA %.6f ч, DEC %.6f°; ожидалось RA %.6f ч, DEC %.6f°\n",
               title, ra, dec, expect_ra_h, expect_dec_deg);
        failures++;
    }
}

static void test_home() {
    astro_model_t m;
    astro_init(&m, RA_STEPS, DEC_STEPS, 0, 0, 0);
    if (m.synced) { printf("FAIL после astro_init synced = true\n"); failures++; }
    check("домашняя позиция: полюс", &m, 0, 0, 0, 0.0, 90.0);
}

static void test_sync() {
    astro_model_t m;
    astro_init(&m, RA_STEPS, DEC_STEPS, 0, 0, 0);

    // Вега: RA 18:36:56, DEC +38°47′. Позиции осей и время — любые
    double vega_ra = 18 + 36 / 60.0 + 56 / 3600.0;
    double vega_dec = 38 + 47 / 60.0;
    astro_sync(&m, vega_ra, vega_dec, 123456, -7890, 5 * SEC);
    if (!m.synced) { printf("FAIL после astro_sync synced = false\n"); failures++; }

    check("сразу после синхронизации", &m, 123456, -7890, 5 * SEC, vega_ra, vega_dec);

    // Моторы стоят, прошёл 1 ч: небо ушло на запад, труба смотрит на восток от Веги —
    // RA в поле зрения выросло на 1 звёздный час (1.0027 ч)
    check("без ведения, 1 ч", &m, 123456, -7890, 5 * SEC + HOUR,
          vega_ra + ASTRO_SIDEREAL_RATIO, vega_dec);

    // Ведение: ось RA крутится вместе с небом — RA не меняется.
    // За 1 ч шагов: RA_STEPS × 1.0027 / 24
    int32_t track_1h = (int32_t)std::lround(RA_STEPS * ASTRO_SIDEREAL_RATIO / 24.0);
    check("с ведением, 1 ч", &m, 123456 + track_1h, -7890, 5 * SEC + HOUR, vega_ra, vega_dec);
}

static void test_moves() {
    astro_model_t m;
    astro_init(&m, RA_STEPS, DEC_STEPS, 0, 0, 0);
    astro_sync(&m, 6.0, 20.0, 0, 0, 0);

    // Четверть оборота RA вперёд (на запад) = 6 ч часового угла → RA меньше на 6 ч
    check("RA на запад 6 ч", &m, RA_STEPS / 4, 0, 0, 0.0, 20.0);
    // Назад (на восток) на 6 ч → RA больше
    check("RA на восток 6 ч", &m, -(int32_t)(RA_STEPS / 4), 0, 0, 12.0, 20.0);
    // Переход через 0 ч: ещё на запад
    check("RA через 0 ч", &m, RA_STEPS / 3, 0, 0, 22.0, 20.0);

    // DEC на север 10° (10/360 оборота)
    check("DEC на север 10°", &m, 0, (int32_t)(DEC_STEPS / 36), 0, 6.0, 30.0);
    // DEC на юг 50°
    check("DEC на юг 50°", &m, 0, -(int32_t)(DEC_STEPS * 5 / 36), 0, 6.0, -30.0);
}

static void test_pole() {
    astro_model_t m;
    astro_init(&m, RA_STEPS, DEC_STEPS, 0, 0, 0);
    astro_sync(&m, 3.0, 85.0, 0, 0, 0);

    // Через полюс: механический угол 85° + 10° = 95° → DEC 85°, RA на 12 ч дальше
    check("через северный полюс", &m, 0, (int32_t)(DEC_STEPS / 36), 0, 15.0, 85.0);
    // Ровно на полюсе
    check("ровно на полюсе", &m, 0, (int32_t)(DEC_STEPS / 72), 0, 3.0, 90.0);

    astro_sync(&m, 3.0, -85.0, 0, 0, 0);
    check("через южный полюс", &m, 0, -(int32_t)(DEC_STEPS / 36), 0, 15.0, -85.0);
}

int main() {
    test_home();
    test_sync();
    test_moves();
    test_pole();

    if (failures == 0) {
        printf("OK: все проверки astro прошли\n");
        return 0;
    }
    printf("Ошибок: %d\n", failures);
    return 1;
}
