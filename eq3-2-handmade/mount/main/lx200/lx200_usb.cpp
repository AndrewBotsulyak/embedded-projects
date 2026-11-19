#include "lx200_usb.h"

#include "driver/usb_serial_jtag.h"
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "lx200.h"

static const char *TAG = "lx200_usb";

#define LX200_USB_BUF_SIZE     256   // буферы приёма и передачи драйвера
#define LX200_USB_WRITE_WAIT_MS 50   // сколько ждать отправки ответа, если компьютер не читает порт

// Задача канала: читает байты из USB, отдаёт парсеру, отправляет ответы
static void lx200_usb_task(void *) {
    lx200_ctx_t ctx;
    lx200_ctx_init(&ctx, "usb");

    uint8_t rx[64];
    char reply[LX200_REPLY_MAX_LEN];

    while (true) {
        // Ждёт байты до 100 мс; возвращает, сколько пришло (0 — ничего)
        int n = usb_serial_jtag_read_bytes(rx, sizeof(rx), pdMS_TO_TICKS(100));

        for (int i = 0; i < n; i++) {
            size_t len = lx200_feed(&ctx, rx[i], reply, sizeof(reply));
            if (len > 0) {
                // Если порт на компьютере не открыт, ответ просто не уйдёт — не зависаем
                usb_serial_jtag_write_bytes(reply, len, pdMS_TO_TICKS(LX200_USB_WRITE_WAIT_MS));
            }
        }
    }
}

esp_err_t lx200_usb_start() {
    usb_serial_jtag_driver_config_t cfg = {
        .tx_buffer_size = LX200_USB_BUF_SIZE,
        .rx_buffer_size = LX200_USB_BUF_SIZE,
    };

    esp_err_t err = usb_serial_jtag_driver_install(&cfg);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "usb_serial_jtag_driver_install: %s", esp_err_to_name(err));
        return err;
    }

    if (xTaskCreate(lx200_usb_task, "lx200_usb", 4096, nullptr, 4, nullptr) != pdPASS) {
        ESP_LOGE(TAG, "не удалось создать задачу lx200_usb");
        return ESP_ERR_NO_MEM;
    }

    ESP_LOGI(TAG, "LX200 на разъёме USB (порт /dev/cu.usbmodem... на Mac)");
    return ESP_OK;
}
