#ifndef OLED_DEVICE_H
#define OLED_DEVICE_H

#include <cstdint>
#include "esp_err.h"

#define I2C_ADDR_OLED 0x3C

// Экран SSD1306 128×64. Память экрана разбита на 8 «страниц» по 8 пикселей в высоту:
// одна страница = одна строка текста.
#define OLED_WIDTH   128
#define OLED_HEIGHT  64
#define OLED_PAGES   (OLED_HEIGHT / 8)

// Текст: ячейка 6×8 (символ 5×7 + 1 пустой столбец)
#define OLED_CHAR_WIDTH  6
#define OLED_TEXT_COLS   (OLED_WIDTH / OLED_CHAR_WIDTH)   // 21 символ в строке
#define OLED_TEXT_ROWS   OLED_PAGES                        // 8 строк

esp_err_t init_oled();
esp_err_t i2c_oled_check();

// Полная настройка SSD1306 и включение экрана. Вызывать после init_oled()
esp_err_t oled_display_init();

// Рисование идёт в буфер кадра в RAM — на экран ничего не уходит до oled_flush()
void oled_clear();
void oled_draw_text(uint8_t row, uint8_t col, const char *text);   // row 0..7, col 0..20 (в символах)
void oled_draw_hline(uint8_t y);                                    // горизонтальная линия на всю ширину, y 0..63

// Отправить буфер кадра на экран (1 КБ по I2C, ~25 мс). Берёт i2c_mutex
esp_err_t oled_flush();

// Контраст (яркость) экрана: 0x00 — самый тёмный, 0xFF — самый яркий.
// Сразу отправляет команду 0x81 экрану, буфер кадра не трогает. Берёт i2c_mutex
esp_err_t oled_set_contrast(uint8_t value);

#endif // OLED_DEVICE_H
