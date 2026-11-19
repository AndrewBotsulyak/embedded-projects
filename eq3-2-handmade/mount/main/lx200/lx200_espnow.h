#ifndef LX200_ESPNOW_H
#define LX200_ESPNOW_H

#include <cstddef>

#include "esp_err.h"

/*
    Канал LX200 через ESP-NOW: связь с пультом без провода и без роутера.

    Приём:  пакет от пульта → байты в lx200_feed (свой lx200_ctx_t) → ответ
            команды уходит пульту отдельным пакетом.
    Отправка: lx200_espnow_send() — послать пульту что угодно (текст LX200).

    Сопряжение (протокол — remote-control/info/pairing.md):
      - пульт шлёт всем "?PAIR"; монтировка отвечает "!PAIR" лично ему, только
        в режиме сопряжения — первые LX200_ESPNOW_PAIR_WINDOW_MS после включения;
      - MAC пульта хранится в NVS (namespace "espnow", ключ "remote_mac")
        и читается при старте;
      - пульт известен   → LX200 принимаем только от него;
      - пульт неизвестен → пультом до перезагрузки становится первый, кто прислал
                           LX200 (в NVS не пишется).

    Wi-Fi работает только как радио для ESP-NOW (режим STA, без подключения к сети),
    канал фиксированный — LX200_ESPNOW_CHANNEL. У пульта должен быть тот же канал.

    Вызывать после motion_start(): команды кладутся в очередь motion_task.
*/

// Должны совпадать с пультом: remote-control/main/espnow_link/espnow_link.h
#define LX200_ESPNOW_CHANNEL        1         // канал Wi-Fi 1..13 (ESPNOW_LINK_CHANNEL)
#define LX200_ESPNOW_PAIR_REQUEST   "?PAIR"   // пульт → все (ESPNOW_PAIR_REQUEST)
#define LX200_ESPNOW_PAIR_REPLY     "!PAIR"   // монтировка → пульт (ESPNOW_PAIR_REPLY)

#define LX200_ESPNOW_PAIR_WINDOW_MS 30000     // режим сопряжения после включения

esp_err_t lx200_espnow_start();

/*
    Отправить пульту данные (до 250 байт, ESP_NOW_MAX_DATA_LEN).
    Можно вызывать из любой задачи. Не ждёт подтверждения доставки:
    ESP_OK значит «пакет передан радио», не «пульт получил».
    ESP_ERR_INVALID_STATE — пульт ещё неизвестен (не сопряжён и не прислал ни одного пакета).
*/
esp_err_t lx200_espnow_send(const void *data, size_t len);

#endif
