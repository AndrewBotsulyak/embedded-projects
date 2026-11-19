#ifndef SCREEN_MSG_H
#define SCREEN_MSG_H

#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "button_handler.h"

// Сообщение в очередь задачи-экрана (main_screen, menu).
// Задачи общаются только такими сообщениями через очереди FreeRTOS.
//
//   task_button_handler ── SCREEN_MSG_BUTTON ────────► все подписчики кнопок
//   task_mount_link     ── SCREEN_MSG_MOUNT_CHANGED ─► все подписчики монтировки
//   task_espnow_link    ── SCREEN_MSG_LINK_CHANGED ──► все подписчики состояния связи
//   main_screen ⇄ menu  ── SCREEN_MSG_SHOW ──────────► одна задача (передать экран)

typedef enum {
    SCREEN_MSG_BUTTON,          // кнопка нажата / отпущена: button, action
    SCREEN_MSG_SHOW,            // экран твой: нарисуйся и обрабатывай кнопки.
                                // back — куда вернуть экран, когда закончишь
    SCREEN_MSG_MOUNT_CHANGED,   // копия состояния монтировки изменилась: перерисуйся, если экран твой
    SCREEN_MSG_LINK_CHANGED,    // сопряжение с монтировкой изменилось (поиск, найдена, забыта)
} screen_msg_type_t;

typedef struct {
    screen_msg_type_t type;
    button_id_t       button;   // SCREEN_MSG_BUTTON
    button_action_t   action;   // SCREEN_MSG_BUTTON
    QueueHandle_t     back;     // SCREEN_MSG_SHOW
} screen_msg_t;

// Создавать так:  screen_msg_t msg = {};  msg.type = ...;
// ({} обнуляет все поля, неиспользуемые остаются нулями)

#endif // SCREEN_MSG_H
