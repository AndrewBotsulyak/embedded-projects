#ifndef I2C_BUS_H
#define I2C_BUS_H

#include "driver/gpio.h"
#include "driver/i2c_master.h"
#include "esp_err.h"
#include "freertos/idf_additions.h"

#define I2C_SCL_PIN GPIO_NUM_6
#define I2C_SDA_PIN GPIO_NUM_7

extern i2c_master_bus_handle_t bus_handle;
extern SemaphoreHandle_t i2c_mutex;

esp_err_t i2c_init();

#endif // I2C_BUS_H
