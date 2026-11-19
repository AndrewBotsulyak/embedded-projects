#ifndef SETTINGS_H
#define SETTINGS_H

#include <cstdint>

#include "lx200_format.h"

// Настройки пульта. Меняют две задачи: main_screen (ENTER — скорость) и menu,
// поэтому значения хранятся в std::atomic: чтение и запись целиком, без «половинок».
// Модуль ничего не отправляет монтировке: это делает тот, кто поменял настройку.

#define SETTINGS_ARROW_RATE_COUNT 4

// Названия скоростей. Порядок совпадает с lx200_rate_t: индекс = скорость
extern const char *const SETTINGS_ARROW_RATE_NAMES[SETTINGS_ARROW_RATE_COUNT];

typedef enum {
    SETTINGS_BRIGHTNESS_LOW,
    SETTINGS_BRIGHTNESS_MID,
    SETTINGS_BRIGHTNESS_HIGH,
} settings_brightness_t;

// Скорость стрелок: GUIDE / CENTER / FIND / SLEW. После включения — GUIDE
lx200_rate_t settings_get_arrow_rate();
void         settings_set_arrow_rate(lx200_rate_t rate);
lx200_rate_t settings_next_arrow_rate();               // по кругу, возвращает новую
const char*  settings_arrow_rate_name(lx200_rate_t rate);

// Яркость экрана. После включения — LOW
settings_brightness_t settings_get_brightness();
void                  settings_set_brightness(settings_brightness_t brightness);

// Контраст OLED для текущей яркости (значение для oled_set_contrast):
// LOW 0x08, MID 0x7F, HIGH 0xFF
uint8_t settings_get_contrast();

#endif // SETTINGS_H
