#ifndef BUTTON_HANDLER_H
#define BUTTON_HANDLER_H

#include "driver/gpio.h"
#include "esp_err.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "freertos/task.h"

#define BTN_CLICK_PIN GPIO_NUM_3

#define LEVEL_PRESSED 0

// Биты кнопок в порту A MCP23017
#define STOP_BUTTON (1UL)
#define MENU_BUTTON (1UL << 1)
#define ENTER_BUTTON (1UL << 2)
#define RIGHT_BUTTON (1UL << 3)
#define LEFT_BUTTON (1UL << 4)
#define DOWN_BUTTON (1UL << 5)
#define UP_BUTTON (1UL << 6)

#define BUTTON_MAX_SUBSCRIBERS 4

// Какая кнопка
typedef enum {
    BUTTON_ID_UP,
    BUTTON_ID_DOWN,
    BUTTON_ID_LEFT,
    BUTTON_ID_RIGHT,
    BUTTON_ID_ENTER,
    BUTTON_ID_MENU,
    BUTTON_ID_STOP,
} button_id_t;

// Что с ней случилось
typedef enum {
    BUTTON_PRESS,     // нажали
    BUTTON_RELEASE,   // отпустили
} button_action_t;

extern TaskHandle_t button_task_d;

// Подписать очередь на кнопки: в неё будут приходить screen_msg_t типа SCREEN_MSG_BUTTON.
// Вызывать до init_btn_handler(). Очередь должна быть создана для screen_msg_t
esp_err_t button_subscribe(QueueHandle_t queue);

esp_err_t init_btn_handler();
void task_button_handler(void* args);

#endif // BUTTON_HANDLER_H
