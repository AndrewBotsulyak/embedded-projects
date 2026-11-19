#include "mcp_device.h"

#include <cstdint>
#include "esp_err.h"
#include "esp_log.h"

// Регистры MCP23017 (режим IOCON.BANK = 0, он же по умолчанию после сброса)
#define MCP_REG_IODIRA    0x00   // направление: 1 = вход, 0 = выход; после сброса = 0xFF (все входы)
#define MCP_REG_IODIRB    0x01   // направление линий порта B, после сброса = 0xFF
#define MCP_REG_IPOLA     0x02   // инверсия чтения: 1 = читать наоборот
#define MCP_REG_GPINTENA  0x04   // разрешить прерывание по изменению
#define MCP_REG_DEFVALA   0x06   // эталон для прерываний; ни на что не влияет, пока прерывания выключены
#define MCP_REG_INTCONA   0x08   // 0 = прерывание при любом изменении
#define MCP_REG_IOCON     0x0A   // общая конфигурация чипа
#define MCP_REG_GPPUA     0x0C   // подтяжка 100 кОм к питанию: 1 = вкл
#define MCP_REG_GPIOA     0x12   // текущее состояние линий порта A
#define MCP_REG_OLATA     0x14   // выходные значения порта A
#define MCP_REG_OLATB     0x15   // выходные значения порта B

// Пара «регистр — значение» для записи в MCP23017
typedef struct {
    uint8_t reg;
    uint8_t value;
} mcp_reg_value_t;

static const char* TAG = "MCP23017";

static i2c_master_dev_handle_t i2c_mcp_handle;

esp_err_t init_mcp(i2c_master_bus_handle_t bus_handle) {
    i2c_device_config_t dev_cfg = {
        .dev_addr_length = I2C_ADDR_BIT_LEN_7,
        .device_address = I2C_ADDR_MCP,
        .scl_speed_hz = 100000,
        .scl_wait_us = 0,
        .flags = {
            .disable_ack_check = 0,
        },
    };

    esp_err_t err = i2c_master_bus_add_device(bus_handle, &dev_cfg, &i2c_mcp_handle);

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "can't configure MCP device");
    }

    esp_err_t err_setup = mcp_setup();

    if (err_setup != ESP_OK) {
        ESP_LOGE(TAG, "can't setup MCP device");
    }

    return ESP_OK;
}

static esp_err_t mcp_write_reg(uint8_t reg, uint8_t value) {
    uint8_t buf[] = {reg, value};
    return i2c_master_transmit(i2c_mcp_handle, buf, sizeof(buf), 100);
}

static esp_err_t mcp_read_reg(uint8_t reg, uint8_t *value) {
    return i2c_master_transmit_receive(i2c_mcp_handle, &reg, 1, value, 1, 100);
}

esp_err_t mcp_setup() {
    const mcp_reg_value_t config[] = {
        { MCP_REG_IOCON,    0x00 },              // INTA активный 0, адрес регистра растёт сам
        { MCP_REG_OLATA,    0x00 },              // выходы будут в 0 (это GPA7)
        { MCP_REG_OLATB,    0x00 },              // выходы будут в 0 (весь порт B)
        { MCP_REG_IODIRA,   MCP_BUTTONS_MASK },  // GPA0..6 — входы, GPA7 — выход
        { MCP_REG_IODIRB,   0x00 },              // порт B не используется — все выходы
        { MCP_REG_GPPUA,    MCP_BUTTONS_MASK },  // подтяжки на кнопочных линиях
        { MCP_REG_IPOLA,    MCP_BUTTONS_MASK },  // нажата = 1, отпущена = 0
        { MCP_REG_INTCONA,  0x00 },              // прерывание на нажатие И отпускание
        { MCP_REG_GPINTENA, MCP_BUTTONS_MASK },  // прерывания с GPA0..6
    };

    for (const mcp_reg_value_t &c : config) {
        esp_err_t err = mcp_write_reg(c.reg, c.value);
        if (err != ESP_OK) {
            ESP_LOGE(TAG, "mcp_setup: write reg 0x%02X failed (%s)", c.reg, esp_err_to_name(err));
            return err;
        }
    }

    // Проверка: читаем каждый регистр обратно и сравниваем с тем, что записали
    for (const mcp_reg_value_t &c : config) {
        uint8_t read_value = 0;
        esp_err_t err = mcp_read_reg(c.reg, &read_value);
        if (err != ESP_OK) {
            ESP_LOGE(TAG, "mcp_setup: read reg 0x%02X failed (%s)", c.reg, esp_err_to_name(err));
            return err;
        }

        if (read_value != c.value) {
            ESP_LOGE(TAG, "mcp_setup: reg 0x%02X wrote 0x%02X, read 0x%02X", c.reg, c.value, read_value);
            return ESP_ERR_INVALID_RESPONSE;
        }
    }

    ESP_LOGI(TAG, "mcp_setup: OK");

    // Чтение GPIOA сбрасывает прерывание, если оно уже успело возникнуть
    uint8_t state = 0;
    return mcp_read_reg(MCP_REG_GPIOA, &state);
}

// Текущее состояние кнопок: бит = 1 → кнопка нажата
esp_err_t mcp_read_buttons(uint8_t *buttons) {
    esp_err_t err = mcp_read_reg(MCP_REG_GPIOA, buttons);
    *buttons &= MCP_BUTTONS_MASK;
    return err;
}
