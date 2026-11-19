#include "main_screen.h"

#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "freertos/task.h"
#include "arrows.h"
#include "button_handler.h"
#include "lx200_format.h"
#include "main_view.h"
#include "menu.h"
#include "mount_link.h"
#include "screen_msg.h"
#include "settings.h"

static const char* TAG = "MAIN_SCREEN";

#define MAIN_SCREEN_QUEUE_LENGTH  16    // 7 кнопок × (нажал + отпустил) + служебные
#define MAIN_SCREEN_TASK_STACK    3072
#define MAIN_SCREEN_TASK_PRIORITY 5     // как menu; ниже кнопок (10) и mount_link (7)

static QueueHandle_t main_queue = nullptr;

// Экран сейчас у главного экрана. После старта — да. Меняет только task_main_screen
static bool active = true;

// Кнопка → направление движения (info/menu.md, раздел 3). false — не стрелка
static bool to_dir(button_id_t button, lx200_dir_t *dir) {
    switch (button) {
        case BUTTON_ID_UP:    *dir = LX200_DIR_N; return true;
        case BUTTON_ID_DOWN:  *dir = LX200_DIR_S; return true;
        case BUTTON_ID_RIGHT: *dir = LX200_DIR_E; return true;
        case BUTTON_ID_LEFT:  *dir = LX200_DIR_W; return true;
        default:              return false;
    }
}

// STOP — на любом экране, даже если экран у меню.
// Обрабатывает именно эта задача, потому что повтор стрелок тоже идёт отсюда:
// сначала забываем стрелки, потом :Q#, и в очереди mount_link после :Q# не окажется :M?#.
// true — нужно перерисовать
static bool handle_stop() {
    ESP_LOGI(TAG, "STOP");
    arrows_forget_all();
    mount_link_stop_all();
    return active;   // строка Move: стала "-"
}

// Нажатие, когда экран у главного экрана. true — нужно перерисовать
static bool handle_press(button_id_t button) {
    lx200_dir_t dir;

    if (to_dir(button, &dir)) {
        arrows_press(dir, settings_get_arrow_rate());
        return true;
    }

    switch (button) {
        case BUTTON_ID_ENTER:
            mount_link_rate(settings_next_arrow_rate());
            return true;

        case BUTTON_ID_MENU:
            // в меню стрелки листают пункты, поэтому движение останавливаем
            arrows_release_all();
            active = false;
            menu_show(main_queue);
            return false;   // теперь рисует меню

        default:
            return false;
    }
}

// Событие кнопки. true — нужно перерисовать
static bool handle_button(const screen_msg_t &msg) {
    if (msg.button == BUTTON_ID_STOP) {
        return (msg.action == BUTTON_PRESS) ? handle_stop() : false;
    }

    // Отпускание стрелки обрабатываем и без экрана: если стрелка зажата,
    // ось едет и её надо остановить. Если не зажата — arrows ничего не отправит
    if (msg.action == BUTTON_RELEASE) {
        lx200_dir_t dir;
        if (to_dir(msg.button, &dir)) {
            return arrows_release(dir) && active;
        }
        return false;
    }

    if (!active) {
        return false;   // экран у меню
    }

    return handle_press(msg.button);
}

static void task_main_screen(void* args) {
    screen_msg_t msg;

    main_view_draw();   // первый кадр

    while (true) {
        // пока стрелка зажата, просыпаемся хотя бы раз в ARROWS_REPEAT_MS для повтора :M?#
        TickType_t wait = arrows_any_held() ? pdMS_TO_TICKS(ARROWS_REPEAT_MS) : portMAX_DELAY;

        if (xQueueReceive(main_queue, &msg, wait) == pdTRUE) {
            bool redraw = false;

            switch (msg.type) {
                case SCREEN_MSG_SHOW:   // меню закрыли и вернули экран
                    active = true;
                    redraw = true;
                    break;

                case SCREEN_MSG_MOUNT_CHANGED:
                    redraw = active;
                    break;

                case SCREEN_MSG_BUTTON:
                    redraw = handle_button(msg);
                    break;

                case SCREEN_MSG_LINK_CHANGED:   // не подписаны: сопряжение показывает меню
                    break;
            }

            if (redraw) {
                main_view_draw();
            }
        }

        arrows_repeat();
    }
}

esp_err_t main_screen_init() {
    main_queue = xQueueCreate(MAIN_SCREEN_QUEUE_LENGTH, sizeof(screen_msg_t));

    if (main_queue == nullptr) {
        ESP_LOGE(TAG, "main_screen_init: can't create queue");
        return ESP_ERR_NO_MEM;
    }

    esp_err_t err = button_subscribe(main_queue);
    if (err != ESP_OK) {
        return err;
    }

    err = mount_link_subscribe(main_queue);
    if (err != ESP_OK) {
        return err;
    }

    BaseType_t created = xTaskCreate(task_main_screen, "task_main_screen", MAIN_SCREEN_TASK_STACK,
                                     NULL, MAIN_SCREEN_TASK_PRIORITY, NULL);

    if (created != pdPASS) {
        ESP_LOGE(TAG, "main_screen_init: can't create task");
        return ESP_ERR_NO_MEM;
    }

    return ESP_OK;
}
