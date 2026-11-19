#ifndef MCP_DEVICE_H
#define MCP_DEVICE_H

#include "driver/i2c_master.h"
#include "esp_err.h"

#include <stdint.h>

#define I2C_ADDR_MCP 0x20

#define MCP_BUTTONS_MASK  0x7F   // 0b0111_1111 = GPA0..GPA6

esp_err_t init_mcp(i2c_master_bus_handle_t bus_handle);
esp_err_t mcp_setup();
esp_err_t mcp_read_buttons(uint8_t *buttons);

#endif // MCP_DEVICE_H
