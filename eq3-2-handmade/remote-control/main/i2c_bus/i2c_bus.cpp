#include "i2c_bus.h"

#include "esp_log.h"
#include "freertos/idf_additions.h"

static const char* TAG = "I2C bus";

i2c_master_bus_handle_t bus_handle;

SemaphoreHandle_t i2c_mutex;

esp_err_t i2c_init() {
    i2c_master_bus_config_t i2c_mst_config = {
        .i2c_port = I2C_NUM_0,
        .sda_io_num = I2C_SDA_PIN,
        .scl_io_num = I2C_SCL_PIN,
        .clk_source = I2C_CLK_SRC_DEFAULT,
        .glitch_ignore_cnt = 7,
        .intr_priority = 0,
        .trans_queue_depth = 0,
        .flags = {
            .enable_internal_pullup = 0,
            .allow_pd = 0,
        },
    };

    esp_err_t err_conf = i2c_new_master_bus(&i2c_mst_config, &bus_handle);

    if (err_conf != ESP_OK) {
        ESP_LOGE(TAG, "Master bus not configured");
        return err_conf;
    }

    i2c_mutex = xSemaphoreCreateMutex();

    return ESP_OK;
}
