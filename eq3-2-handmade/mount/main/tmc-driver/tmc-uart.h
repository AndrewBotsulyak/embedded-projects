#ifndef TMC_UART_H
#define TMC_UART_H

#include <cstdint>

#include "driver/uart.h"
#include "esp_err.h"

#include "axis-config.h"
#include "pins.h"

// UART TMC CONFIG
#define UART_TMC_NUM UART_NUM_1
#define UART_TMC_BAUD_RATE 115200
#define UART_RX_BUF_SIZE 1024
#define UART_READ_WAIT_MS 20
#define UART_WAIT_TX_DONE_MS 1000
#define UART_TMC_SYNC_BYTE 0x05 // первый байт любой датаграммы
#define UART_TMC_REG_VALUE_LENGTH 0x04
#define UART_TMC_READ_RESPONSE_LEN 0x08
#define UART_TMC_WRITE_PACKAGE_LENGTH 0x04
#define UART_TMC_WRITE_REGISTER_PACKAGE_LENGTH 0x08
#define UART_TMC_MASTER_ADDR 0xFF  // адрес мастера во втором байте ответа
// Адрес драйвера (0..3) задаётся пинами MS1/MS2 модуля и хранится в конфиге оси:
// AXES[a].uart_addr в axis-config.h

void tmc_uart_init();

// Прочитать 32-битный регистр драйвера с адресом addr (0..3)
esp_err_t read_tmc_reg(uint8_t addr, uint8_t reg, uint32_t *value);

// Записать 32-битный регистр драйвера с адресом addr; успех проверяется по его счётчику IFCNT
esp_err_t write_tmc_reg(uint8_t addr, uint8_t reg, uint32_t value);

// То же по оси: адрес берётся из AXES[a].uart_addr. Используй их в коде.
esp_err_t tmc_read(axis_t a, uint8_t reg, uint32_t *value);
esp_err_t tmc_write(axis_t a, uint8_t reg, uint32_t value);

#endif
