#ifndef MENU_H
#define MENU_H

#include "esp_err.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"

// Задача меню. Снаружи доступны только эти две функции: остальные файлы папки
// (menu_nav, menu_items, menu_view) использует только сама задача.
//
//   кнопки (подписка)  ── SCREEN_MSG_BUTTON ───────►┐
//   mount_link (подписка) ─ SCREEN_MSG_MOUNT_CHANGED ┼──► очередь ──► task_menu ──► OLED
//   main_screen: menu_show(back) ─ SCREEN_MSG_SHOW ─►┘                   │
//                                                                        │ меню закрыли
//                                                 SCREEN_MSG_SHOW ◄──────┘ в очередь back

// Создать очередь, подписаться на кнопки и монтировку, создать задачу.
// Вызывать после mount_link_init() и до init_btn_handler()
esp_err_t menu_init();

// Отдать экран меню: оно откроется с корня.
// back — очередь задачи, которой вернуть экран, когда меню закроют
bool menu_show(QueueHandle_t back);

#endif // MENU_H
