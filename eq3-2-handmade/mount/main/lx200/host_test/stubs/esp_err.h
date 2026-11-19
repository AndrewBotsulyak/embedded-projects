// Заглушка ESP-IDF для проверок на компьютере (host_test): только то, что нужно парсеру
#pragma once
typedef int esp_err_t;
#define ESP_OK   0
#define ESP_FAIL -1
#define ESP_ERR_INVALID_STATE 0x103
