#ifndef MOUNT_LINK_H
#define MOUNT_LINK_H

#include <cstdint>

#include "esp_err.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "lx200_format.h"

// Задача связи с монтировкой: единственное место, откуда пульт отправляет команды LX200
// (по радио через espnow_link), и единственный владелец копии состояния монтировки.
//
//   main_screen ─┐ mount_link_move() ...                      ┌─► espnow_link_send() ─► радио
//   menu ────────┴──────────────► очередь ──► task_mount_link ─┤
//   espnow_link ── ответы монтировки ──► rx_queue ──────────►  └─► SCREEN_MSG_MOUNT_CHANGED подписчикам
//
// Функции mount_link_rate/move/... не отправляют сами: они кладут команду в очередь
// задачи (ждут не дольше MOUNT_LINK_SEND_TIMEOUT_MS) и сразу возвращаются.
//
// Состояние монтировки пульт НЕ угадывает по своим командам: раз в MOUNT_LINK_POLL_MS
// задача спрашивает :GU# и берёт ведение и аварию из ответа. Нет ответа дольше
// MOUNT_LINK_LOST_MS — связь потеряна.

#define MOUNT_LINK_MAX_SUBSCRIBERS  4
#define MOUNT_LINK_SEND_TIMEOUT_MS  50
#define MOUNT_LINK_POLL_MS          500    // как часто спрашивать :GU#
#define MOUNT_LINK_LOST_MS          1500   // нет ответа дольше (3 опроса) — «нет связи»

// Создать очереди и задачу. Вызывать после espnow_link_init() и до инициализации экранов
esp_err_t mount_link_init();

// Подписать очередь экрана на SCREEN_MSG_MOUNT_CHANGED. Вызывать до запуска задач
esp_err_t mount_link_subscribe(QueueHandle_t queue);

// --- Копия состояния монтировки из ответа :GU# (читать можно из любой задачи) ---

// Монтировка отвечает (ответ на :GU# был не позже MOUNT_LINK_LOST_MS назад)
bool mount_link_is_connected();

// 0 — ведение выключено, 1 — включено. Без связи — последнее известное значение
uint8_t mount_link_get_tracking();

// Монтировка в аварии драйвера: движение заблокировано
bool mount_link_is_fault();

esp_err_t mount_link_rate(lx200_rate_t rate);   // :RG# :RC# :RM# :RS#
esp_err_t mount_link_move(lx200_dir_t dir);     // :Mn# :Ms# :Me# :Mw#
esp_err_t mount_link_stop_dir(lx200_dir_t dir); // :Qn# :Qs# :Qe# :Qw#
esp_err_t mount_link_tracking(bool on);         // :Te# / :Td#
esp_err_t mount_link_stop_all();                // :Q#  — монтировка после него в IDLE

#endif // MOUNT_LINK_H
