#include "astro.h"

#include <cmath>

// Привести часы к 0..24
static double wrap_hours(double h) {
    h = std::fmod(h, 24.0);
    if (h < 0) h += 24.0;
    return h;
}

void astro_init(astro_model_t *m, uint32_t ra_steps_per_rev, uint32_t dec_steps_per_rev,
                int32_t ra_steps, int32_t dec_steps, int64_t t_us) {
    m->ra_steps_per_rev  = ra_steps_per_rev;
    m->dec_steps_per_rev = dec_steps_per_rev;
    astro_sync(m, 0.0, 90.0, ra_steps, dec_steps, t_us);   // домашняя позиция: полюс
    m->synced = false;
}

void astro_sync(astro_model_t *m, double ra_h, double dec_deg,
                int32_t ra_steps, int32_t dec_steps, int64_t t_us) {
    m->ra0_h      = wrap_hours(ra_h);
    m->dec0_deg   = dec_deg;
    m->ra_steps0  = ra_steps;
    m->dec_steps0 = dec_steps;
    m->t0_us      = t_us;
    m->synced     = true;
}

void astro_get(const astro_model_t *m, int32_t ra_steps, int32_t dec_steps, int64_t t_us,
               double *ra_h, double *dec_deg) {
    // Сколько звёздного времени прошло с точки отсчёта, часы
    double sidereal_h = (double)(t_us - m->t0_us) / 3600e6 * ASTRO_SIDEREAL_RATIO;

    // На сколько повернулась ось RA, часы (полный оборот = 24 ч часового угла).
    // Вперёд — на запад: часовой угол растёт, RA убывает
    double ra_axis_h = (double)(ra_steps - m->ra_steps0) * 24.0 / m->ra_steps_per_rev;

    // На сколько повернулась ось DEC, градусы. Вперёд — на север
    double dec_axis_deg = (double)(dec_steps - m->dec_steps0) * 360.0 / m->dec_steps_per_rev;

    double ra  = m->ra0_h + sidereal_h - ra_axis_h;
    double dec = m->dec0_deg + dec_axis_deg;

    // Механический угол DEC → настоящий DEC. Если ось DEC перешла через полюс
    // (угол больше 90°), труба смотрит на другую сторону неба:
    // DEC отражается, а RA сдвигается на 12 ч
    dec = std::fmod(dec, 360.0);
    if (dec > 180.0)  dec -= 360.0;
    if (dec < -180.0) dec += 360.0;
    if (dec > 90.0)  { dec =  180.0 - dec; ra += 12.0; }
    if (dec < -90.0) { dec = -180.0 - dec; ra += 12.0; }

    *ra_h    = wrap_hours(ra);
    *dec_deg = dec;
}
