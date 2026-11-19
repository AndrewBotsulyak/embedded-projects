#ifndef MAIN_VIEW_H
#define MAIN_VIEW_H

#include "esp_err.h"

// Отрисовка главного экрана. Только для задачи main_screen.
//
//   ┌─────────────────────┐
//   │EQ3-2 REMOTE         │  строка 0 — TODO: состояние монтировки и NO LINK (после ESP-NOW)
//   │─────────────────────│  строка 1 — линия
//   │Tracking: OFF        │  строка 2 — копия состояния монтировки (mount_link_get_tracking)
//   │Speed:    GUIDE      │  строка 3 — скорость стрелок
//   │Move:     N E        │  строка 4 — зажатые стрелки
//   │                     │
//   │ENTER: speed         │  строка 6
//   │MENU:  menu          │  строка 7
//   └─────────────────────┘

esp_err_t main_view_draw();

#endif // MAIN_VIEW_H
