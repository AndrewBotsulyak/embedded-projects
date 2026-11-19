#include "tmc-uart.h"

#include "esp_err.h"
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/idf_additions.h"
#include "freertos/task.h"

#include "portmacro.h"
#include "tmc-err-codes.h"
#include "tmc-regs.h"
#include <cstdint>

static const char *TAG = "tmc-uart";

SemaphoreHandle_t tmc_uart_mutex;

/*
    Контрольная сумма CRC8
    TMC2209 ожидает CRC, посчитанную по конкретному, зафиксированному в его документации алгоритму
*/
static uint8_t tmc_crc8(uint8_t *data, uint8_t len) {
    // Начальное значение контрольной суммы — ноль.
    uint8_t crc = 0;
    // Внешний цикл: перебираем все байты пакета по очереди.
    for (int i = 0; i < len; i++) {
        // Берём очередной байт в отдельную переменную, чтобы можно было
        // сдвигать его, не портя исходный пакет.
        uint8_t b = data[i];
        // Внутренний цикл: перебираем 8 бит этого байта, начиная с младшего.
        for (int j = 0; j < 8; j++) {
            // Сравниваем старший бит суммы (crc >> 7) с текущим битом байта
            // (b & 0x01). «^» — исключающее ИЛИ: результат 1, если биты разные.
            if ((crc >> 7) ^ (b & 0x01)) {
                // Биты разные: сдвигаем сумму влево и «подмешиваем» полином 0x07.
                crc = (crc << 1) ^ 0x07;
            } else {
                // Биты одинаковые: просто сдвигаем сумму влево.
                crc = (crc << 1);
            }
            // Сдвигаем байт вправо, чтобы на следующем шаге смотреть
            // на следующий бит.
            b >>= 1;
        }
    }
    // После всех байтов в crc лежит готовая контрольная сумма.
    return crc;
}

static bool validate_uart_response(uint8_t *resp) {
    if (resp[0] != UART_TMC_SYNC_BYTE || resp[1] != UART_TMC_MASTER_ADDR
        || resp[7] != tmc_crc8(resp, 7)) {
            return false;
    }

    return true;
}

void tmc_uart_init() {

    const uart_config_t uart_config = {
        .baud_rate = UART_TMC_BAUD_RATE,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .rx_flow_ctrl_thresh = 0,
        .source_clk = UART_SCLK_DEFAULT,
        .flags = {}
    };

    // We won't use a buffer for sending data.
    esp_err_t err_driver_install = uart_driver_install(UART_TMC_NUM, UART_RX_BUF_SIZE, 0, 0, NULL, 0);
    
    if (err_driver_install != ESP_OK) {
        ESP_LOGE(TAG, "uart_driver_install Error: %s", esp_err_to_name(err_driver_install));
    }

    esp_err_t err_param_config = uart_param_config(UART_TMC_NUM, &uart_config);
    
    if (err_param_config != ESP_OK) {
        ESP_LOGE(TAG, "uart_param_config Error: %s", esp_err_to_name(err_param_config));
    }

    uart_set_pin(UART_TMC_NUM, UART_TX, UART_RX, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);

    tmc_uart_mutex = xSemaphoreCreateMutex();
}

static void get_uart_read_request(uint8_t addr, uint8_t reg, uint8_t *request) {
    request[0] = UART_TMC_SYNC_BYTE;
    request[1] = addr;
    request[2] = (uint8_t)(reg & ~(1 << 7));
    request[3] = tmc_crc8(request, UART_TMC_WRITE_PACKAGE_LENGTH - 1);
}

static esp_err_t set_IFCNT_reg(uint8_t addr, uint8_t *value) {
    uint8_t request[UART_TMC_WRITE_PACKAGE_LENGTH] = {};
    get_uart_read_request(addr, TMC_REG_IFCNT, request);

    // RX буффер не чищу это будет делать вызывающая функция

    uart_write_bytes(UART_TMC_NUM, request, UART_TMC_WRITE_PACKAGE_LENGTH);
    esp_err_t tx_err = uart_wait_tx_done(UART_TMC_NUM, pdMS_TO_TICKS(UART_WAIT_TX_DONE_MS));

    if (tx_err != ESP_OK) {
        ESP_LOGE(TAG, "Ошибка: %s", esp_err_to_name(tx_err));
        return tx_err;
    }

    const uint8_t bufferLength = UART_TMC_READ_RESPONSE_LEN + UART_TMC_WRITE_PACKAGE_LENGTH;
    uint8_t response[bufferLength];

    int respLen = uart_read_bytes(UART_TMC_NUM, response, bufferLength, pdMS_TO_TICKS(UART_READ_WAIT_MS));

    if (respLen < bufferLength) {
        ESP_LOGE(TAG, "set_IFCNT_reg: Нет питания мотора VS. Также возможно, что неправильный адрес (MS1/MS2) или провод не доходит до PDN_UART.");
        ESP_LOGI(TAG, "set_IFCNT_reg: respLen is %d", respLen);

        return ESP_ERR_TMC_NO_RESPONSE;
    }

    if (validate_uart_response(&response[UART_TMC_WRITE_PACKAGE_LENGTH]) == false) {
        ESP_LOGE(TAG, "set_IFCNT_reg: UART Response failed validation");
        return ESP_ERR_TMC_INVALID_CRC;
    }

    *value = response[UART_TMC_WRITE_PACKAGE_LENGTH + 6];

    return ESP_OK;
}

esp_err_t read_tmc_reg(uint8_t addr, uint8_t reg, uint32_t *value) {

    uint8_t request[UART_TMC_WRITE_PACKAGE_LENGTH] = {};
    get_uart_read_request(addr, reg, request);


    // --------- MUTEX START ---------
    xSemaphoreTake(tmc_uart_mutex, portMAX_DELAY);
    
        // чищу RX буффер для полудуплекса
        uart_flush(UART_TMC_NUM);

        uart_write_bytes(UART_TMC_NUM, request, UART_TMC_WRITE_PACKAGE_LENGTH);

        esp_err_t tx_err = uart_wait_tx_done(UART_TMC_NUM, pdMS_TO_TICKS(UART_WAIT_TX_DONE_MS));

        if (tx_err != ESP_OK) {
            ESP_LOGE(TAG, "Ошибка: %s", esp_err_to_name(tx_err));
            xSemaphoreGive(tmc_uart_mutex);
            return ESP_ERR_TMC_NO_RESPONSE;
        }

        const uint8_t readLength = UART_TMC_READ_RESPONSE_LEN + UART_TMC_WRITE_PACKAGE_LENGTH;
        // тут буду эхо данные которые я шлю в uart_write_bytes 4 байта + сам ответ от драйвера 8 байт
        uint8_t response[readLength] = {};

        int respLen = uart_read_bytes(UART_TMC_NUM, response,
            readLength, pdMS_TO_TICKS(UART_READ_WAIT_MS));

    xSemaphoreGive(tmc_uart_mutex);

    // --------- MUTEX END ---------

    if (respLen < readLength) {
        // ESP_LOGE(TAG, "read_tmc_reg: Нет питания мотора VS. Также возможно, что неправильный адрес (MS1/MS2) или провод не доходит до PDN_UART.");

        return ESP_ERR_TMC_NO_RESPONSE;
    }

    if (validate_uart_response(&response[UART_TMC_WRITE_PACKAGE_LENGTH]) == false) {
        ESP_LOGE(TAG, "UART Response failed validation");
        return ESP_ERR_TMC_INVALID_CRC;
    }

    *value = (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 3] << 24;
    *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 4] << 16;
    *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 5] << 8;
    *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH+ 6];

    return ESP_OK;
}

esp_err_t write_tmc_reg(uint8_t addr, uint8_t reg, uint32_t value) {
    uint8_t request[8];

    request[0] = UART_TMC_SYNC_BYTE;
    request[1] = addr;
    request[2] = reg | ((uint8_t)1 << 7);
    request[3] = (uint8_t)(value >> 24);
    request[4] = (uint8_t)(value >> 16);
    request[5] = (uint8_t)(value >> 8);
    request[6] = (uint8_t)value;
    request[7] = tmc_crc8(request, UART_TMC_WRITE_REGISTER_PACKAGE_LENGTH - 1);

    // --------- MUTEX START ---------
    xSemaphoreTake(tmc_uart_mutex, portMAX_DELAY);

        uart_flush(UART_TMC_NUM);

        uint8_t ifcntBefore;
        esp_err_t ifcnt_err = set_IFCNT_reg(addr, &ifcntBefore);

        if (ifcnt_err != ESP_OK) {
            ESP_LOGE(TAG, "write_tmc_reg: Ошибка при попытке изменения регистра IFCNT.");
            xSemaphoreGive(tmc_uart_mutex);
            return ifcnt_err;
        }

        uart_flush(UART_TMC_NUM);

        uart_write_bytes(UART_TMC_NUM, request, UART_TMC_WRITE_REGISTER_PACKAGE_LENGTH);

        esp_err_t tx_err = uart_wait_tx_done(UART_TMC_NUM, pdMS_TO_TICKS(UART_WAIT_TX_DONE_MS));

        uart_flush(UART_TMC_NUM);

        if (tx_err != ESP_OK) {
            ESP_LOGE(TAG, "write_tmc_reg: Ошибка отправки данных по UART: %s", esp_err_to_name(tx_err));
            xSemaphoreGive(tmc_uart_mutex);
            return tx_err;
        }

        uint8_t ifcntAfter;
        esp_err_t ifcnt_after_err = set_IFCNT_reg(addr, &ifcntAfter);

        if (ifcnt_after_err != ESP_OK) {
            ESP_LOGE(TAG, "write_tmc_reg: Ошибка при попытке изменения регистра IFCNT.");
            xSemaphoreGive(tmc_uart_mutex);
            return ifcnt_after_err;
        }

        uart_flush(UART_TMC_NUM);

    xSemaphoreGive(tmc_uart_mutex);
    // --------- MUTEX END ---------

    if ((uint8_t)(ifcntAfter - ifcntBefore) != 1) {
        ESP_LOGE(TAG, "write_tmc_reg: Запись в регистр не состоялась !!!");
        return ESP_ERR_TMC_WRITE_LOST;
    }

    return ESP_OK;
}

// Обёртки по оси: адрес драйвера берётся из конфига оси
esp_err_t tmc_read(axis_t a, uint8_t reg, uint32_t *value) {
    return read_tmc_reg(AXES[a].uart_addr, reg, value);
}

esp_err_t tmc_write(axis_t a, uint8_t reg, uint32_t value) {
    return write_tmc_reg(AXES[a].uart_addr, reg, value);
}
