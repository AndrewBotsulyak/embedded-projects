#include "mount.h"

#include <cmath>

#include "esp_log.h"
#include "esp_timer.h"
#include "freertos/FreeRTOS.h"
#include "freertos/semphr.h"

#include "astro.h"
#include "axis-config.h"
#include "motion.h"
#include "stepper.h"

static const char *TAG = "mount";

static const char *const DIR_NAME[] = { "север", "юг", "восток", "запад" };

// Север/юг — ось DEC, восток/запад — ось RA
static axis_t dir_axis(mount_dir_t dir) {
    return (dir == MOUNT_DIR_N || dir == MOUNT_DIR_S) ? AXIS_DEC : AXIS_RA;
}

// «Вперёд» FastAccelStepper (runForward): RA — запад, туда же, куда ведение
// (ведение крутит RA вперёд); DEC — север.
// Если ось едет не в ту сторону — менять AXES[a].shaft, а не эту функцию.
static bool dir_forward(mount_dir_t dir) {
    return dir == MOUNT_DIR_N || dir == MOUNT_DIR_W;
}

static motion_rate_t to_motion_rate(mount_rate_t rate) {
    switch (rate) {
        case MOUNT_RATE_GUIDE:  return MOTION_RATE_GUIDE;
        case MOUNT_RATE_CENTER: return MOTION_RATE_CENTER;
        case MOUNT_RATE_FIND:   return MOTION_RATE_FIND;
        case MOUNT_RATE_SLEW:   return MOTION_RATE_SLEW;
    }
    return MOTION_RATE_SLEW;
}

esp_err_t mount_move(mount_dir_t dir, bool keepalive) {
    ESP_LOGI(TAG, "Движение: %s", DIR_NAME[dir]);
    return motion_move(dir_axis(dir), dir_forward(dir), keepalive);
}

esp_err_t mount_stop(mount_dir_t dir) {
    ESP_LOGI(TAG, "Стоп: %s", DIR_NAME[dir]);
    return motion_stop(dir_axis(dir));
}

esp_err_t mount_stop_all() {
    ESP_LOGI(TAG, "Стоп всего");
    return motion_abort();
}

esp_err_t mount_track(bool on) {
    ESP_LOGI(TAG, "Ведение: %s", on ? "включить" : "выключить");
    return motion_track(on);
}

void mount_set_rate(mount_rate_t rate) {
    motion_set_rate(to_motion_rate(rate));
}

mount_state_t mount_get_state() {
    switch (motion_get_state()) {
        case MOTION_STATE_IDLE:     return MOUNT_STATE_IDLE;
        case MOTION_STATE_TRACKING: return MOUNT_STATE_TRACKING;
        case MOTION_STATE_GOTO:     return MOUNT_STATE_GOTO;
        case MOTION_STATE_FAULT:    return MOUNT_STATE_FAULT;
    }
    return MOUNT_STATE_FAULT;
}

mount_rate_t mount_get_rate() {
    switch (motion_get_rate()) {
        case MOTION_RATE_GUIDE:  return MOUNT_RATE_GUIDE;
        case MOTION_RATE_CENTER: return MOUNT_RATE_CENTER;
        case MOTION_RATE_FIND:   return MOUNT_RATE_FIND;
        case MOTION_RATE_SLEW:   return MOUNT_RATE_SLEW;
    }
    return MOUNT_RATE_SLEW;
}

// --- Координаты ---

/*
    Модель неба одна на всю монтировку, а спрашивают её все каналы сразу
    (Stellarium по USB, пульт по ESP-NOW...) из своих задач — поэтому мьютекс.
*/
static astro_model_t model;
static bool          model_ready = false;

static SemaphoreHandle_t model_mutex() {
    static StaticSemaphore_t buf;
    static SemaphoreHandle_t mutex = xSemaphoreCreateMutexStatic(&buf);
    return mutex;
}

/*
    Подготовить модель при первом обращении (вызывать под model_mutex).
    Шаги и время берём нулевые: так было в момент включения, когда труба
    стояла в домашней позиции. Поэтому неважно, когда спросят впервые.
*/
static void model_prepare() {
    if (model_ready) return;
    astro_init(&model, (uint32_t)axis_steps_per_rev(AXIS_RA), (uint32_t)axis_steps_per_rev(AXIS_DEC),
               0, 0, 0);
    model_ready = true;
}

void mount_get_radec(int32_t *ra_sec, int32_t *dec_arcsec) {
    // Позиции и время снять как можно ближе друг к другу
    int32_t ra_steps  = stepper_get_position(AXIS_RA);
    int32_t dec_steps = stepper_get_position(AXIS_DEC);
    int64_t now_us    = esp_timer_get_time();

    double ra_h, dec_deg;
    xSemaphoreTake(model_mutex(), portMAX_DELAY);
    model_prepare();
    astro_get(&model, ra_steps, dec_steps, now_us, &ra_h, &dec_deg);
    xSemaphoreGive(model_mutex());

    *ra_sec     = (int32_t)std::lround(ra_h * 3600.0) % 86400;   // 23:59:59.6 → 0, а не 86 400
    *dec_arcsec = (int32_t)std::lround(dec_deg * 3600.0);
}

esp_err_t mount_sync(int32_t ra_sec, int32_t dec_arcsec) {
    mount_state_t st = mount_get_state();
    if (st == MOUNT_STATE_GOTO || st == MOUNT_STATE_FAULT) {
        ESP_LOGW(TAG, "Синхронизация отклонена: %s", st == MOUNT_STATE_GOTO ? "идёт GoTo" : "авария");
        return ESP_ERR_INVALID_STATE;
    }

    int32_t ra_steps  = stepper_get_position(AXIS_RA);
    int32_t dec_steps = stepper_get_position(AXIS_DEC);
    int64_t now_us    = esp_timer_get_time();

    xSemaphoreTake(model_mutex(), portMAX_DELAY);
    model_prepare();
    astro_sync(&model, ra_sec / 3600.0, dec_arcsec / 3600.0, ra_steps, dec_steps, now_us);
    xSemaphoreGive(model_mutex());

    ESP_LOGI(TAG, "Синхронизация: RA %02d:%02d:%02d, DEC %+d°%02d′ (шаги RA %d, DEC %d)",
             (int)(ra_sec / 3600), (int)(ra_sec / 60 % 60), (int)(ra_sec % 60),
             (int)(dec_arcsec / 3600), (int)(std::abs(dec_arcsec) / 60 % 60),
             (int)ra_steps, (int)dec_steps);

    // Звезда в окуляре — дальше вести её (план, этап 3)
    return mount_track(true);
}

bool mount_is_synced() {
    xSemaphoreTake(model_mutex(), portMAX_DELAY);
    model_prepare();
    bool synced = model.synced;
    xSemaphoreGive(model_mutex());
    return synced;
}
