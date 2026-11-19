#include "button_handler.h"

#include <cstdint>
#include "esp_attr.h"
#include "esp_log.h"
#include "freertos/semphr.h"
#include "mcp_device.h"
#include "i2c_bus.h"
#include "screen_msg.h"

static const char* TAG = "BUTTONS";

TaskHandle_t button_task_d;

// Очереди задач, подписанных на кнопки (main_screen, menu)
static QueueHandle_t subscribers[BUTTON_MAX_SUBSCRIBERS] = {};
static uint8_t       subscriber_count = 0;

esp_err_t button_subscribe(QueueHandle_t queue) {
    if (queue == nullptr) {
        return ESP_ERR_INVALID_ARG;
    }
    if (subscriber_count >= BUTTON_MAX_SUBSCRIBERS) {
        ESP_LOGE(TAG, "button_subscribe: too many subscribers");
        return ESP_ERR_NO_MEM;
    }

    subscribers[subscriber_count++] = queue;
    return ESP_OK;
}

static void IRAM_ATTR isr_button_handler(void* args) {
    BaseType_t woken = pdFALSE;

    vTaskNotifyGiveFromISR(button_task_d, &woken);

    // если разбудили более приоритетную задачу — переключиться на неё сразу
    portYIELD_FROM_ISR(woken);
}

esp_err_t init_btn_handler() {

    gpio_config_t cfg = {
        .pin_bit_mask = (1UL << BTN_CLICK_PIN),
        .mode = GPIO_MODE_INPUT,
        .pull_up_en = GPIO_PULLUP_DISABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_NEGEDGE,
    };

    esp_err_t err_cfg = gpio_config(&cfg);

    if (err_cfg != ESP_OK) {
        ESP_LOGE(TAG, "init_btn_handler: ERROR during gpio config");
        return err_cfg;
    }

    xTaskCreate(task_button_handler, "task_button_handler", 2048, NULL, 10, &button_task_d);

    gpio_install_isr_service(0);

    esp_err_t err_isr = gpio_isr_handler_add(BTN_CLICK_PIN, isr_button_handler, NULL);

    if (err_isr != ESP_OK) {
        ESP_LOGE(TAG, "init_btn_handler: ERROR during add isr");
        return err_isr;
    }

    return ESP_OK;
}

// Бит MCP23017 → кнопка
typedef struct {
    uint8_t     mask;
    button_id_t button;
} button_map_t;

static const button_map_t BUTTONS[] = {
    { STOP_BUTTON,  BUTTON_ID_STOP  },   // первой: STOP обрабатывается раньше остальных
    { MENU_BUTTON,  BUTTON_ID_MENU  },
    { ENTER_BUTTON, BUTTON_ID_ENTER },
    { RIGHT_BUTTON, BUTTON_ID_RIGHT },
    { LEFT_BUTTON,  BUTTON_ID_LEFT  },
    { DOWN_BUTTON,  BUTTON_ID_DOWN  },
    { UP_BUTTON,    BUTTON_ID_UP    },
};

// Разослать событие подписчикам. Не ждёт: если очередь полна, событие теряется
static void publish(button_id_t button, button_action_t action) {
    screen_msg_t msg = {};
    msg.type   = SCREEN_MSG_BUTTON;
    msg.button = button;
    msg.action = action;

    for (uint8_t i = 0; i < subscriber_count; i++) {
        if (xQueueSend(subscribers[i], &msg, 0) != pdTRUE) {
            ESP_LOGW(TAG, "publish: queue %u full, button %d lost", i, (int)button);
        }
    }
}

// Событие для каждой кнопки из mask
static void send_events(uint8_t mask, button_action_t action) {
    for (const button_map_t &b : BUTTONS) {
        if (mask & b.mask) {
            publish(b.button, action);
        }
    }
}

void task_button_handler(void* args) {
    uint8_t prev_buttons = 0;

    while (true) {

        ulTaskNotifyTake(pdTRUE, portMAX_DELAY);

        while (ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(20)) > 0) {
        }

        // кнопка не менялась или это была короткая помеха
        if (gpio_get_level(BTN_CLICK_PIN) == 1) {
            continue;
        }


        uint8_t buttons = 0;

        xSemaphoreTake(i2c_mutex, portMAX_DELAY);
        esp_err_t err = mcp_read_buttons(&buttons);
        xSemaphoreGive(i2c_mutex);

        if (err != ESP_OK) {
            ESP_LOGE(TAG, "task_button_handler: read failed (%s)", esp_err_to_name(err));
            continue;
        }

        // Только что нажатые: сейчас 1, раньше 0. Только что отпущенные: сейчас 0, раньше 1.
        // Удерживаемая кнопка повторных событий не даёт: повтор движения делает arrows.cpp
        uint8_t pressed  = buttons & ~prev_buttons;
        uint8_t released = prev_buttons & ~buttons;
        prev_buttons = buttons;

        if (pressed == 0 && released == 0) {
            continue;
        }

        ESP_LOGI(TAG, "task_button_handler: pressed 0x%02X released 0x%02X", pressed, released);

        // сначала отпускания: «отпустил ◄, нажал ►» → сначала :Qw#, потом :Me#
        send_events(released, BUTTON_RELEASE);
        send_events(pressed,  BUTTON_PRESS);
    }

}
