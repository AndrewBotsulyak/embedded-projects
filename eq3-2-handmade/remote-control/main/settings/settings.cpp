#include "settings.h"

#include <atomic>

const char *const SETTINGS_ARROW_RATE_NAMES[SETTINGS_ARROW_RATE_COUNT] = {"GUIDE", "CENTER", "FIND", "SLEW"};

static std::atomic<uint8_t> arrow_rate{LX200_RATE_GUIDE};
static std::atomic<uint8_t> brightness{SETTINGS_BRIGHTNESS_LOW};

lx200_rate_t settings_get_arrow_rate() {
    return (lx200_rate_t)arrow_rate.load();
}

void settings_set_arrow_rate(lx200_rate_t rate) {
    if ((uint8_t)rate < SETTINGS_ARROW_RATE_COUNT) {
        arrow_rate.store((uint8_t)rate);
    }
}

lx200_rate_t settings_next_arrow_rate() {
    uint8_t current = arrow_rate.load();
    uint8_t next;
    do {
        next = (uint8_t)((current + 1) % SETTINGS_ARROW_RATE_COUNT);
    } while (!arrow_rate.compare_exchange_weak(current, next));
    return (lx200_rate_t)next;
}

const char* settings_arrow_rate_name(lx200_rate_t rate) {
    if ((uint8_t)rate >= SETTINGS_ARROW_RATE_COUNT) {
        return "?";
    }
    return SETTINGS_ARROW_RATE_NAMES[rate];
}

settings_brightness_t settings_get_brightness() {
    return (settings_brightness_t)brightness.load();
}

void settings_set_brightness(settings_brightness_t value) {
    brightness.store((uint8_t)value);
}

// Индекс — settings_brightness_t
static const uint8_t BRIGHTNESS_CONTRAST[] = {
    0x08,   // LOW: ночью не слепит
    0x7F,   // MID
    0xFF,   // HIGH
};

uint8_t settings_get_contrast() {
    uint8_t level = brightness.load();
    if (level >= sizeof(BRIGHTNESS_CONTRAST)) {
        return BRIGHTNESS_CONTRAST[SETTINGS_BRIGHTNESS_MID];
    }
    return BRIGHTNESS_CONTRAST[level];
}
