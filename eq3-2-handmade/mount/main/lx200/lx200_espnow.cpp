#include "lx200_espnow.h"

#include <cstring>

#include "esp_event.h"
#include "esp_log.h"
#include "esp_mac.h"
#include "esp_netif.h"
#include "esp_now.h"
#include "esp_timer.h"
#include "esp_wifi.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "freertos/task.h"
#include "nvs.h"
#include "nvs_flash.h"

#include "lx200.h"

static const char *TAG = "lx200_espnow";

#define LX200_ESPNOW_QUEUE_LEN 8   // принятых пакетов в очереди, пока задача их не разобрала

#define NVS_NAMESPACE  "espnow"
#define NVS_KEY_REMOTE "remote_mac"

// Принятый пакет: callback Wi-Fi кладёт его в очередь, задача канала забирает
typedef struct {
    uint8_t mac[ESP_NOW_ETH_ALEN];
    uint8_t len;
    uint8_t data[ESP_NOW_MAX_DATA_LEN];
} espnow_packet_t;

static QueueHandle_t rx_queue = nullptr;

// MAC пульта. Пишет только задача канала (и start до её запуска),
// читает ещё lx200_espnow_send() из других задач — всё под remote_lock
static uint8_t      remote_mac[ESP_NOW_ETH_ALEN] = {};
static bool         remote_known = false;
static portMUX_TYPE remote_lock = portMUX_INITIALIZER_UNLOCKED;

// ─── NVS: MAC пульта переживает перезагрузку ─────────────────────────────────

static bool nvs_load_remote(uint8_t mac[ESP_NOW_ETH_ALEN]) {
    nvs_handle_t h;
    if (nvs_open(NVS_NAMESPACE, NVS_READONLY, &h) != ESP_OK) {
        return false;   // namespace ещё не создан — ни разу не сопрягались
    }

    size_t len = ESP_NOW_ETH_ALEN;
    esp_err_t err = nvs_get_blob(h, NVS_KEY_REMOTE, mac, &len);
    nvs_close(h);

    return err == ESP_OK && len == ESP_NOW_ETH_ALEN;
}

static void nvs_save_remote(const uint8_t mac[ESP_NOW_ETH_ALEN]) {
    nvs_handle_t h;
    esp_err_t err = nvs_open(NVS_NAMESPACE, NVS_READWRITE, &h);
    if (err == ESP_OK) {
        err = nvs_set_blob(h, NVS_KEY_REMOTE, mac, ESP_NOW_ETH_ALEN);
        if (err == ESP_OK) {
            err = nvs_commit(h);
        }
        nvs_close(h);
    }
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "nvs_save_remote: %s", esp_err_to_name(err));
    }
}

// ─── Пульт ───────────────────────────────────────────────────────────────────

static bool is_remote(const uint8_t *mac) {
    taskENTER_CRITICAL(&remote_lock);
    bool result = remote_known && memcmp(mac, remote_mac, ESP_NOW_ETH_ALEN) == 0;
    taskEXIT_CRITICAL(&remote_lock);
    return result;
}

// Запомнить пульт: старый peer удалить, новый добавить (без peer esp_now_send ему не отправит)
static esp_err_t set_remote(const uint8_t *mac) {
    if (is_remote(mac)) {
        return ESP_OK;
    }

    if (remote_known) {
        esp_now_del_peer(remote_mac);   // remote_mac меняет только эта задача — читать можно без замка
    }

    esp_now_peer_info_t peer = {};
    memcpy(peer.peer_addr, mac, ESP_NOW_ETH_ALEN);
    peer.channel = 0;              // 0 — текущий канал Wi-Fi (LX200_ESPNOW_CHANNEL)
    peer.ifidx = WIFI_IF_STA;
    peer.encrypt = false;

    esp_err_t err = esp_now_add_peer(&peer);
    if (err != ESP_OK && err != ESP_ERR_ESPNOW_EXIST) {
        ESP_LOGE(TAG, "esp_now_add_peer: %s", esp_err_to_name(err));
        taskENTER_CRITICAL(&remote_lock);
        remote_known = false;      // старый peer уже удалён
        taskEXIT_CRITICAL(&remote_lock);
        return err;
    }

    taskENTER_CRITICAL(&remote_lock);
    memcpy(remote_mac, mac, ESP_NOW_ETH_ALEN);
    remote_known = true;
    taskEXIT_CRITICAL(&remote_lock);

    ESP_LOGI(TAG, "Пульт: " MACSTR, MAC2STR(mac));
    return ESP_OK;
}

// ─── Колбэки ESP-NOW (выполняются в задаче Wi-Fi: только копия в очередь) ────

static void on_recv(const esp_now_recv_info_t *info, const uint8_t *data, int len) {
    if (info == nullptr || data == nullptr || len <= 0 || len > ESP_NOW_MAX_DATA_LEN) return;

    espnow_packet_t pkt;
    memcpy(pkt.mac, info->src_addr, ESP_NOW_ETH_ALEN);
    pkt.len = (uint8_t)len;
    memcpy(pkt.data, data, len);

    xQueueSend(rx_queue, &pkt, 0);   // очередь полна — пакет теряется (лог тут нельзя: задача Wi-Fi)
}

// Дошёл ли пакет (пульт подтвердил приём)
static void on_send(const esp_now_send_info_t *info, esp_now_send_status_t status) {
    if (status != ESP_NOW_SEND_SUCCESS) {
        ESP_LOGW(TAG, "пакет пульту не доставлен (" MACSTR ")", MAC2STR(info->des_addr));
    }
}

// ─── Внутри задачи ───────────────────────────────────────────────────────────

static bool packet_is(const espnow_packet_t &pkt, const char *text) {
    size_t n = strlen(text);
    return pkt.len == n && memcmp(pkt.data, text, n) == 0;
}

static bool pair_window_open() {
    return esp_timer_get_time() < (int64_t)LX200_ESPNOW_PAIR_WINDOW_MS * 1000;
}

// "?PAIR": в режиме сопряжения запомнить пульт и ответить ему "!PAIR"
static void handle_pair_request(const uint8_t *mac) {
    if (!pair_window_open()) {
        ESP_LOGW(TAG, "?PAIR от " MACSTR " — режим сопряжения закончился (первые %d с после включения)",
                 MAC2STR(mac), LX200_ESPNOW_PAIR_WINDOW_MS / 1000);
        return;
    }

    if (set_remote(mac) != ESP_OK) return;
    nvs_save_remote(mac);   // каждый "?PAIR" (повтор раз в 500 мс) перезаписывает те же 6 байт —
                            // пульт перестаёт слать после первого "!PAIR", так что это 1–2 записи

    lx200_espnow_send(LX200_ESPNOW_PAIR_REPLY, strlen(LX200_ESPNOW_PAIR_REPLY));
    ESP_LOGI(TAG, "сопряжено с пультом " MACSTR, MAC2STR(mac));
}

// LX200 принимаем от своего пульта. Пульт неизвестен — выбрать этого (до перезагрузки)
static bool accept_sender(const uint8_t *mac) {
    if (remote_known) {
        return is_remote(mac);
    }
    return set_remote(mac) == ESP_OK;
}

// Задача канала: служебные пакеты — сопряжение, остальное — в парсер LX200
static void lx200_espnow_task(void *) {
    lx200_ctx_t ctx;
    lx200_ctx_init(&ctx, "espnow");
    ctx.keepalive_moves = true;   // пульт повторяет :M?# раз в 200 мс, пока стрелка зажата

    espnow_packet_t pkt;
    char reply[LX200_REPLY_MAX_LEN];

    while (true) {
        if (xQueueReceive(rx_queue, &pkt, portMAX_DELAY) != pdTRUE) continue;

        if (packet_is(pkt, LX200_ESPNOW_PAIR_REQUEST)) {
            handle_pair_request(pkt.mac);
            continue;
        }

        // Остальные служебные сообщения (LX200 начинается с ':' или 0x06) — не нам
        if (pkt.data[0] == '?' || pkt.data[0] == '!') continue;

        if (!accept_sender(pkt.mac)) {
            ESP_LOGW(TAG, "пакет от чужого " MACSTR " — пропущен", MAC2STR(pkt.mac));
            continue;
        }

        // В одном пакете может быть несколько команд — на каждую свой ответ-пакет
        for (int i = 0; i < pkt.len; i++) {
            size_t len = lx200_feed(&ctx, pkt.data[i], reply, sizeof(reply));
            if (len > 0) {
                lx200_espnow_send(reply, len);
            }
        }
    }
}

// ─── Запуск ──────────────────────────────────────────────────────────────────

// Wi-Fi как радио для ESP-NOW: STA без подключения к сети, фиксированный канал
static esp_err_t wifi_init() {
    // NVS: Wi-Fi хранит в ней калибровку радио, мы — MAC пульта
    esp_err_t err = nvs_flash_init();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK_WITHOUT_ABORT(nvs_flash_erase());
        err = nvs_flash_init();
    }
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "nvs_flash_init: %s", esp_err_to_name(err));
        return err;
    }

    err = esp_netif_init();
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "esp_netif_init: %s", esp_err_to_name(err));
        return err;
    }

    // Цикл событий может быть уже создан другим модулем — это не ошибка
    err = esp_event_loop_create_default();
    if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {
        ESP_LOGE(TAG, "esp_event_loop_create_default: %s", esp_err_to_name(err));
        return err;
    }

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    if ((err = esp_wifi_init(&cfg)) != ESP_OK)                     goto fail;
    if ((err = esp_wifi_set_storage(WIFI_STORAGE_RAM)) != ESP_OK)  goto fail;   // настройки Wi-Fi не писать во флеш
    if ((err = esp_wifi_set_mode(WIFI_MODE_STA)) != ESP_OK)        goto fail;
    if ((err = esp_wifi_start()) != ESP_OK)                        goto fail;
    if ((err = esp_wifi_set_channel(LX200_ESPNOW_CHANNEL, WIFI_SECOND_CHAN_NONE)) != ESP_OK) goto fail;
    
    // Без энергосбережения радио слушает всё время: пакеты пульта не теряются
    if ((err = esp_wifi_set_ps(WIFI_PS_NONE)) != ESP_OK)           goto fail;
    return ESP_OK;

fail:
    ESP_LOGE(TAG, "настройка Wi-Fi: %s", esp_err_to_name(err));
    return err;
}

esp_err_t lx200_espnow_start() {
    rx_queue = xQueueCreate(LX200_ESPNOW_QUEUE_LEN, sizeof(espnow_packet_t));
    if (rx_queue == nullptr) {
        ESP_LOGE(TAG, "не удалось создать очередь приёма");
        return ESP_ERR_NO_MEM;
    }

    esp_err_t err = wifi_init();
    if (err != ESP_OK) return err;

    if ((err = esp_now_init()) != ESP_OK) {
        ESP_LOGE(TAG, "esp_now_init: %s", esp_err_to_name(err));
        return err;
    }
    esp_now_register_recv_cb(on_recv);
    esp_now_register_send_cb(on_send);

    uint8_t saved[ESP_NOW_ETH_ALEN];
    if (nvs_load_remote(saved)) {
        if ((err = set_remote(saved)) != ESP_OK) return err;
        ESP_LOGI(TAG, "пульт из NVS: " MACSTR, MAC2STR(saved));
    }
    else {
        ESP_LOGI(TAG, "пульт не сопряжён: на пульте MENU > Link > Pair в первые %d с",
                 LX200_ESPNOW_PAIR_WINDOW_MS / 1000);
    }

    if (xTaskCreate(lx200_espnow_task, "lx200_espnow", 4096, nullptr, 4, nullptr) != pdPASS) {
        ESP_LOGE(TAG, "не удалось создать задачу lx200_espnow");
        return ESP_ERR_NO_MEM;
    }

    uint8_t own_mac[ESP_NOW_ETH_ALEN];
    esp_wifi_get_mac(WIFI_IF_STA, own_mac);
    ESP_LOGI(TAG, "LX200 по ESP-NOW: MAC монтировки " MACSTR ", канал %d",
             MAC2STR(own_mac), LX200_ESPNOW_CHANNEL);
    return ESP_OK;
}

esp_err_t lx200_espnow_send(const void *data, size_t len) {
    if (data == nullptr || len == 0 || len > ESP_NOW_MAX_DATA_LEN) return ESP_ERR_INVALID_ARG;

    uint8_t mac[ESP_NOW_ETH_ALEN];
    taskENTER_CRITICAL(&remote_lock);
    bool known = remote_known;
    memcpy(mac, remote_mac, ESP_NOW_ETH_ALEN);
    taskEXIT_CRITICAL(&remote_lock);

    if (!known) return ESP_ERR_INVALID_STATE;

    esp_err_t err = esp_now_send(mac, (const uint8_t *)data, len);
    if (err != ESP_OK) {
        ESP_LOGW(TAG, "esp_now_send: %s", esp_err_to_name(err));
    }
    return err;
}
