#include "menu.h"

#include "esp_log.h"
#include "freertos/task.h"
#include "button_handler.h"
#include "espnow_link.h"
#include "menu_items.h"
#include "menu_nav.h"
#include "menu_view.h"
#include "mount_link.h"
#include "screen_msg.h"

static const char* TAG = "MENU";

#define MENU_QUEUE_LENGTH  16    // 7 кнопок × (нажал + отпустил) + служебные
#define MENU_TASK_STACK    3072
#define MENU_TASK_PRIORITY 5     // как main_screen; ниже кнопок (10) и mount_link (7)

static QueueHandle_t menu_queue = nullptr;

// Экран сейчас у меню. Меняет только task_menu
static bool active = false;

// Кому вернуть экран после закрытия меню
static QueueHandle_t back_queue = nullptr;

// Кнопка → событие навигации. false — у кнопки нет действия в меню (STOP)
static bool to_menu_event(button_id_t button, menu_event_t *event) {
    switch (button) {
        case BUTTON_ID_UP:    *event = MENU_EVENT_UP;    return true;
        case BUTTON_ID_DOWN:  *event = MENU_EVENT_DOWN;  return true;
        case BUTTON_ID_LEFT:  *event = MENU_EVENT_LEFT;  return true;
        case BUTTON_ID_RIGHT: *event = MENU_EVENT_RIGHT; return true;
        case BUTTON_ID_ENTER: *event = MENU_EVENT_ENTER; return true;
        case BUTTON_ID_MENU:  *event = MENU_EVENT_MENU;  return true;
        case BUTTON_ID_STOP:  return false;
    }
    return false;
}

// Вернуть экран тому, кто его дал
static void give_back() {
    active = false;

    if (back_queue == nullptr) {
        return;
    }

    screen_msg_t msg = {};
    msg.type = SCREEN_MSG_SHOW;
    msg.back = menu_queue;

    if (xQueueSend(back_queue, &msg, 0) != pdTRUE) {
        ESP_LOGE(TAG, "give_back: queue full");
    }
}

static void handle_button(const screen_msg_t &msg) {
    // экран не у меню, или кнопку отпустили — меню это не интересно
    if (!active || msg.action != BUTTON_PRESS) {
        return;
    }

    menu_event_t event;
    if (!to_menu_event(msg.button, &event)) {
        return;
    }

    bool changed = menu_nav_handle(event);

    if (!menu_nav_is_open()) {
        give_back();
        return;
    }

    if (changed) {
        menu_draw();
    }
}

static void task_menu(void* args) {
    screen_msg_t msg;

    while (true) {
        if (xQueueReceive(menu_queue, &msg, portMAX_DELAY) != pdTRUE) {
            continue;
        }

        switch (msg.type) {
            case SCREEN_MSG_SHOW:
                back_queue = msg.back;
                active = true;
                menu_nav_open(&MENU_ROOT);
                menu_draw();
                break;

            case SCREEN_MSG_MOUNT_CHANGED:
            case SCREEN_MSG_LINK_CHANGED:
                if (active) {
                    menu_draw();   // например, Tracking стал OFF после STOP, Link: SEARCH → PAIRED
                }
                break;

            case SCREEN_MSG_BUTTON:
                handle_button(msg);
                break;
        }
    }
}

esp_err_t menu_init() {
    menu_queue = xQueueCreate(MENU_QUEUE_LENGTH, sizeof(screen_msg_t));

    if (menu_queue == nullptr) {
        ESP_LOGE(TAG, "menu_init: can't create queue");
        return ESP_ERR_NO_MEM;
    }

    esp_err_t err = button_subscribe(menu_queue);
    if (err != ESP_OK) {
        return err;
    }

    err = mount_link_subscribe(menu_queue);
    if (err != ESP_OK) {
        return err;
    }

    err = espnow_link_subscribe_state(menu_queue);
    if (err != ESP_OK) {
        return err;
    }

    BaseType_t created = xTaskCreate(task_menu, "task_menu", MENU_TASK_STACK, NULL, MENU_TASK_PRIORITY, NULL);

    if (created != pdPASS) {
        ESP_LOGE(TAG, "menu_init: can't create task");
        return ESP_ERR_NO_MEM;
    }

    return ESP_OK;
}

bool menu_show(QueueHandle_t back) {
    if (menu_queue == nullptr) {
        return false;
    }

    screen_msg_t msg = {};
    msg.type = SCREEN_MSG_SHOW;
    msg.back = back;

    if (xQueueSend(menu_queue, &msg, 0) != pdTRUE) {
        ESP_LOGE(TAG, "menu_show: queue full");
        return false;
    }

    return true;
}
