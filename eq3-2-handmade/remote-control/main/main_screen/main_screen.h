#ifndef MAIN_SCREEN_H
#define MAIN_SCREEN_H

#include "esp_err.h"

// Задача главного экрана. Снаружи доступна только инициализация: остальные файлы
// папки (main_view, arrows) использует только сама задача.
//
//   кнопки (подписка)     ── SCREEN_MSG_BUTTON ───────►┐
//   mount_link (подписка) ── SCREEN_MSG_MOUNT_CHANGED ─┼──► очередь ──► task_main_screen ──► OLED
//   menu (экран вернули)  ── SCREEN_MSG_SHOW ─────────►┘                │
//                                                                       ├── стрелки, ENTER, STOP → mount_link
//                                                                       └── MENU → menu_show(своя очередь)
//
// После старта экран у главного экрана: задача сама рисует первый кадр.

// Создать очередь, подписаться на кнопки и монтировку, создать задачу.
// Вызывать после mount_link_init() и menu_init(), до init_btn_handler()
esp_err_t main_screen_init();

#endif // MAIN_SCREEN_H
