#include "oled_device.h"

#include <cstdint>
#include <cstring>
#include "driver/i2c_master.h"
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/semphr.h"
#include "i2c_bus.h"
#include "oled_font.h"
#include "settings.h"

static const char* TAG = "OLED";

// Первый байт каждой посылки по I2C говорит SSD1306, что идёт дальше
#define OLED_CONTROL_CMD   0x00   // команды
#define OLED_CONTROL_DATA  0x40   // данные для памяти экрана

static i2c_master_dev_handle_t i2c_oled_handle;

// Буфер кадра: OLED_PAGES страниц по OLED_WIDTH байт.
// Байт = вертикальный столбик из 8 пикселей, бит 0 — верхний.
// Первый байт посылки (OLED_CONTROL_DATA) лежит прямо перед буфером: так весь кадр
// уходит одной передачей, без копирования
static uint8_t frame_tx[1 + OLED_WIDTH * OLED_PAGES] = {OLED_CONTROL_DATA};
static uint8_t *const frame = &frame_tx[1];

esp_err_t init_oled() {
    i2c_device_config_t dev_cfg = {
        .dev_addr_length = I2C_ADDR_BIT_LEN_7,
        .device_address = I2C_ADDR_OLED,
        .scl_speed_hz = 400000,
        .scl_wait_us = 0,
        .flags = {
            .disable_ack_check = 0,
        },
    };

    esp_err_t err = i2c_master_bus_add_device(bus_handle, &dev_cfg, &i2c_oled_handle);

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "can't configure OLED device");
    }

    return err;
}

esp_err_t i2c_oled_check() {
    uint8_t cmd[] = {
        0x00,        // «дальше идут команды»
        0x8D, 0x14,  // включить встроенный повышающий преобразователь
        0xAF,        // включить дисплей
        0xA5,        // зажечь ВСЕ пиксели (игнорируя видеопамять)
    };

    esp_err_t err = i2c_master_transmit(i2c_oled_handle, cmd, sizeof(cmd), 100);

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "i2c_oled_check: ERROR");
        return err;
    }

    return ESP_OK;
}

esp_err_t oled_display_init() {
    const uint8_t cmd[] = {
        OLED_CONTROL_CMD,
        0xAE,         // выключить экран на время настройки
        0xD5, 0x80,   // частота обновления — значение по умолчанию
        0xA8, 0x3F,   // 64 строки
        0xD3, 0x00,   // без вертикального сдвига
        0x40,         // вывод начинается со строки 0 памяти
        0x8D, 0x14,   // включить встроенный повышающий преобразователь (питание матрицы)
        0x20, 0x00,   // горизонтальная адресация: после конца строки — следующая страница
        0xA1,         // зеркально по горизонтали (столбец 0 — слева на модуле)
        0xC8,         // зеркально по вертикали (страница 0 — сверху на модуле)
        0xDA, 0x12,   // схема подключения строк для матрицы 128×64
        0x81, 0x7F,   // контраст (яркость): средний; после init app_main ставит значение из настроек
        0xD9, 0xF1,   // время предзаряда — для встроенного преобразователя
        0xDB, 0x40,   // уровень напряжения «пиксель выключен»
        0xA4,         // показывать память экрана (отменяет 0xA5 из i2c_oled_check)
        0xA6,         // обычный режим: 1 — пиксель горит
        0xAF,         // включить экран
    };

    xSemaphoreTake(i2c_mutex, portMAX_DELAY);
    esp_err_t err = i2c_master_transmit(i2c_oled_handle, cmd, sizeof(cmd), 100);
    xSemaphoreGive(i2c_mutex);

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "oled_display_init: ERROR (%s)", esp_err_to_name(err));
        return err;
    }

    oled_set_contrast(settings_get_contrast());   // яркость из настроек (по умолчанию LOW)

    oled_clear();
    return oled_flush();
}

void oled_clear() {
    memset(frame, 0, OLED_WIDTH * OLED_PAGES);
}

void oled_draw_text(uint8_t row, uint8_t col, const char *text) {
    if (row >= OLED_TEXT_ROWS) {
        return;
    }

    uint16_t x = col * OLED_CHAR_WIDTH;
    uint8_t *page = &frame[row * OLED_WIDTH];

    for (const char *p = text; *p != '\0'; p++) {
        if (x + OLED_CHAR_WIDTH > OLED_WIDTH) {
            break;   // не помещается — обрезаем
        }

        uint8_t c = (uint8_t)*p;
        if (c < OLED_FONT_FIRST || c > OLED_FONT_LAST) {
            c = '?';
        }

        const uint8_t *glyph = OLED_FONT[c - OLED_FONT_FIRST];
        for (uint8_t i = 0; i < OLED_FONT_WIDTH; i++) {
            page[x + i] = glyph[i];
        }
        page[x + OLED_FONT_WIDTH] = 0x00;   // пустой столбец между символами

        x += OLED_CHAR_WIDTH;
    }
}

void oled_draw_hline(uint8_t y) {
    if (y >= OLED_HEIGHT) {
        return;
    }

    uint8_t *page = &frame[(y / 8) * OLED_WIDTH];
    uint8_t bit = (uint8_t)(1 << (y % 8));

    for (uint16_t x = 0; x < OLED_WIDTH; x++) {
        page[x] |= bit;
    }
}

esp_err_t oled_flush() {
    // Окно записи — весь экран: столбцы 0..127, страницы 0..7
    const uint8_t window[] = {
        OLED_CONTROL_CMD,
        0x21, 0, OLED_WIDTH - 1,
        0x22, 0, OLED_PAGES - 1,
    };

    xSemaphoreTake(i2c_mutex, portMAX_DELAY);

    esp_err_t err = i2c_master_transmit(i2c_oled_handle, window, sizeof(window), 100);
    if (err == ESP_OK) {
        err = i2c_master_transmit(i2c_oled_handle, frame_tx, sizeof(frame_tx), 100);
    }

    xSemaphoreGive(i2c_mutex);

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "oled_flush: ERROR (%s)", esp_err_to_name(err));
    }

    return err;
}

esp_err_t oled_set_contrast(uint8_t value) {
    const uint8_t cmd[] = {
        OLED_CONTROL_CMD,
        0x81, value,   // контраст: 0x00..0xFF
    };

    xSemaphoreTake(i2c_mutex, portMAX_DELAY);
    esp_err_t err = i2c_master_transmit(i2c_oled_handle, cmd, sizeof(cmd), 100);
    xSemaphoreGive(i2c_mutex);

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "oled_set_contrast: ERROR (%s)", esp_err_to_name(err));
    }

    return err;
}
