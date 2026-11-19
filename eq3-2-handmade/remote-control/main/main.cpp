#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <stdio.h>
#include "driver/gpio.h"
#include "driver/i2c_master.h"
#include "esp_attr.h"
#include "esp_err.h"
#include "esp_log.h"
#include "freertos/idf_additions.h"
#include "i2c_bus.h"
#include "mcp_device.h"
#include "oled_device.h"
#include "button_handler.h"
#include "espnow_link.h"
#include "mount_link.h"
#include "menu.h"
#include "main_screen.h"
#include "settings.h"
#include "portmacro.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/projdefs.h"

static const char* TAG = "I2C logic";

esp_err_t i2c_read(i2c_master_dev_handle_t *i2c_dev, uint8_t reg, uint8_t *read_buffer) {
    uint8_t write_buffer[] = {reg};

    esp_err_t err = i2c_master_transmit_receive(*i2c_dev, write_buffer, 1, read_buffer, 4, -1);
    
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "i2c_read ERROR");
        return err;
    }

    return ESP_OK;
}

esp_err_t i2c_write(i2c_master_dev_handle_t *i2c_dev, uint8_t reg, uint8_t *write_buffer, size_t len) {

    esp_err_t err = i2c_master_transmit(*i2c_dev, write_buffer, len, 100);
    
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "i2c_write ERROR");
        return err;
    }

    return ESP_OK;
}

extern "C" void app_main(void)
{
    esp_err_t err_i2c = i2c_init();

    if (err_i2c != ESP_OK) {
        return;
    }

    init_mcp(bus_handle);
    init_oled();

    i2c_oled_check();

    oled_display_init();

    // Задачи: сначала те, кому шлют сообщения, потом те, кто шлёт.
    // Экраны подписываются на кнопки и монтировку в своих *_init()
    if (espnow_link_init() != ESP_OK) {
        ESP_LOGE(TAG, "ESP-NOW not started: commands won't reach the mount");   // пульт работает и без радио
    }
    mount_link_init();
    menu_init();
    main_screen_init();
    init_btn_handler();

    printf("ASfkjsaf asfkjhsafkj asf");

}
