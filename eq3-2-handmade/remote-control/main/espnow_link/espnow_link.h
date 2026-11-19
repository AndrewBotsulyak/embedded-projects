#ifndef ESPNOW_LINK_H
#define ESPNOW_LINK_H

#include <cstddef>
#include <cstdint>

#include "esp_err.h"
#include "esp_now.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"

// Задача радиосвязи ESP-NOW: отправляет и принимает пакеты, знает MAC монтировки
// (сопряжение, хранение в NVS). Про LX200 ничего не знает — передаёт байты как есть.
//
//   mount_link: espnow_link_send()      ── TX ──────►┐
//   меню: espnow_link_pair_start/unpair ── PAIR ────►│
//   колбэк Wi-Fi «пакет пришёл»         ── RX ──────►┼──► очередь ──► task_espnow_link ──► esp_now_send()
//   колбэк Wi-Fi «пакет отправлен»      ── TX_DONE ─►┘                     │
//                                                         ┌────────────────┴──────────────┐
//                                                         ▼                               ▼
//                                             RX (LX200) → подписчики RX      SCREEN_MSG_LINK_CHANGED
//                                                                              → подписчики состояния
//
// Колбэки ESP-NOW выполняются в задаче Wi-Fi: в них только копия пакета в очередь.
// Протокол сопряжения: info/pairing.md

// Канал Wi-Fi: у пульта и монтировки должен быть одинаковым
#define ESPNOW_LINK_CHANNEL 1

// Сопряжение: служебные сообщения начинаются НЕ с ':', поэтому не путаются с LX200
#define ESPNOW_PAIR_REQUEST       "?PAIR"   // пульт → все (broadcast): «кто тут монтировка?»
#define ESPNOW_PAIR_REPLY         "!PAIR"   // монтировка → пульт (лично): «я»
#define ESPNOW_PAIR_REQUEST_MS    500       // как часто повторять запрос
#define ESPNOW_PAIR_TIMEOUT_MS    10000     // сколько искать

#define ESPNOW_LINK_MAX_DATA        ESP_NOW_MAX_DATA_LEN   // 250 байт в одном пакете
#define ESPNOW_LINK_MAX_SUBSCRIBERS 4

// Пакет: для приёма (в очередь подписчика) и внутри модуля
typedef struct {
    uint8_t mac[ESP_NOW_ETH_ALEN];       // от кого пришёл (RX)
    uint8_t len;                         // сколько байт в data
    uint8_t data[ESPNOW_LINK_MAX_DATA];
} espnow_packet_t;

// Состояние сопряжения
typedef enum {
    ESPNOW_LINK_NOT_PAIRED,   // MAC монтировки неизвестен: команды уходят всем (broadcast)
    ESPNOW_LINK_PAIRING,      // идёт поиск: раз в 500 мс "?PAIR", до 10 с
    ESPNOW_LINK_PAIRED,       // MAC известен: команды только монтировке, с подтверждением доставки
} espnow_link_state_t;

// Запустить Wi-Fi (только радио), ESP-NOW и задачу. Прочитать MAC монтировки из NVS.
// Вызывать до mount_link_init(). Пишет в лог MAC этой платы
esp_err_t espnow_link_init();

// Подписать очередь espnow_packet_t на принятые пакеты (кроме служебных).
// Вызывать до запуска задач
esp_err_t espnow_link_subscribe_rx(QueueHandle_t queue);

// Подписать очередь screen_msg_t на SCREEN_MSG_LINK_CHANGED (сменилось состояние сопряжения).
// Вызывать до запуска задач
esp_err_t espnow_link_subscribe_state(QueueHandle_t queue);

// Отправить данные монтировке (или всем, если не сопряжены). Кладёт пакет в очередь
// задачи и сразу возвращается. len 1..ESPNOW_LINK_MAX_DATA
esp_err_t espnow_link_send(const uint8_t *data, size_t len);

// Начать поиск монтировки. Результат — SCREEN_MSG_LINK_CHANGED подписчикам состояния.
// Если не нашли за ESPNOW_PAIR_TIMEOUT_MS, остаётся прежний MAC (если был)
esp_err_t espnow_link_pair_start();

// Забыть монтировку: стереть MAC из NVS, вернуться к broadcast
esp_err_t espnow_link_unpair();

// Для экрана (из любой задачи)
espnow_link_state_t espnow_link_get_state();
bool                espnow_link_get_peer(uint8_t mac[ESP_NOW_ETH_ALEN]);   // false — не сопряжены

#endif // ESPNOW_LINK_H
