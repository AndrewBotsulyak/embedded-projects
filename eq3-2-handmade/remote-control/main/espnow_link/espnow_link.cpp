#include "espnow_link.h"

#include <atomic>
#include <cstring>
#include "esp_event.h"
#include "esp_log.h"
#include "esp_mac.h"
#include "esp_netif.h"
#include "esp_wifi.h"
#include "freertos/task.h"
#include "nvs.h"
#include "nvs_flash.h"
#include "screen_msg.h"

static const char* TAG = "ESPNOW";

#define ESPNOW_LINK_QUEUE_LENGTH    10
#define ESPNOW_LINK_TASK_STACK      3584
#define ESPNOW_LINK_TASK_PRIORITY   8      // выше mount_link (7): пакет уходит сразу
#define ESPNOW_LINK_SEND_TIMEOUT_MS 50

#define NVS_NAMESPACE  "espnow"
#define NVS_KEY_PEER   "peer_mac"

// ─── Событие в очереди задачи ────────────────────────────────────────────────

typedef enum {
    ESPNOW_EVENT_TX,           // packet: отправить (из espnow_link_send)
    ESPNOW_EVENT_TX_DONE,      // ok: результат отправки (из колбэка Wi-Fi)
    ESPNOW_EVENT_RX,           // packet: принят пакет (из колбэка Wi-Fi)
    ESPNOW_EVENT_PAIR_START,   // начать поиск монтировки (из меню)
    ESPNOW_EVENT_UNPAIR,       // забыть монтировку (из меню)
} espnow_event_type_t;

typedef struct {
    espnow_event_type_t type;
    bool                ok;       // ESPNOW_EVENT_TX_DONE
    espnow_packet_t     packet;   // ESPNOW_EVENT_TX / ESPNOW_EVENT_RX
} espnow_event_t;

// ─── Данные модуля ───────────────────────────────────────────────────────────

static const uint8_t BROADCAST_MAC[ESP_NOW_ETH_ALEN] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};

static QueueHandle_t event_queue = nullptr;

static QueueHandle_t rx_subscribers[ESPNOW_LINK_MAX_SUBSCRIBERS] = {};
static uint8_t       rx_subscriber_count = 0;

static QueueHandle_t state_subscribers[ESPNOW_LINK_MAX_SUBSCRIBERS] = {};
static uint8_t       state_subscriber_count = 0;

// MAC монтировки. Пишет только task_espnow_link (и init до старта задачи),
// читает ещё espnow_link_get_peer() из других задач — под peer_lock
static uint8_t     peer_mac[ESP_NOW_ETH_ALEN] = {};
static bool        paired = false;
static portMUX_TYPE peer_lock = portMUX_INITIALIZER_UNLOCKED;

static std::atomic<uint8_t> state{ESPNOW_LINK_NOT_PAIRED};

// Поиск монтировки (только внутри задачи)
static bool       pairing = false;
static TickType_t pair_deadline = 0;    // когда сдаться
static TickType_t pair_next_request = 0; // когда повторить "?PAIR"

// ─── NVS: MAC монтировки переживает перезагрузку ─────────────────────────────

static bool nvs_load_peer(uint8_t mac[ESP_NOW_ETH_ALEN]) {
    nvs_handle_t h;
    if (nvs_open(NVS_NAMESPACE, NVS_READONLY, &h) != ESP_OK) {
        return false;   // namespace ещё не создан — ни разу не сопрягались
    }

    size_t len = ESP_NOW_ETH_ALEN;
    esp_err_t err = nvs_get_blob(h, NVS_KEY_PEER, mac, &len);
    nvs_close(h);

    return err == ESP_OK && len == ESP_NOW_ETH_ALEN;
}

static void nvs_save_peer(const uint8_t mac[ESP_NOW_ETH_ALEN]) {
    nvs_handle_t h;
    esp_err_t err = nvs_open(NVS_NAMESPACE, NVS_READWRITE, &h);
    if (err == ESP_OK) {
        err = nvs_set_blob(h, NVS_KEY_PEER, mac, ESP_NOW_ETH_ALEN);
        if (err == ESP_OK) {
            err = nvs_commit(h);
        }
        nvs_close(h);
    }
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "nvs_save_peer failed (%s)", esp_err_to_name(err));
    }
}

static void nvs_erase_peer() {
    nvs_handle_t h;
    if (nvs_open(NVS_NAMESPACE, NVS_READWRITE, &h) != ESP_OK) {
        return;
    }
    nvs_erase_key(h, NVS_KEY_PEER);   // ESP_ERR_NVS_NOT_FOUND — и так нет, это нормально
    nvs_commit(h);
    nvs_close(h);
}

// ─── Peer в ESP-NOW ──────────────────────────────────────────────────────────

static esp_err_t add_peer(const uint8_t mac[ESP_NOW_ETH_ALEN]) {
    if (esp_now_is_peer_exist(mac)) {
        return ESP_OK;
    }

    esp_now_peer_info_t peer = {};
    memcpy(peer.peer_addr, mac, ESP_NOW_ETH_ALEN);
    peer.channel = ESPNOW_LINK_CHANNEL;
    peer.ifidx = WIFI_IF_STA;
    peer.encrypt = false;

    esp_err_t err = esp_now_add_peer(&peer);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "esp_now_add_peer " MACSTR " failed (%s)", MAC2STR(mac), esp_err_to_name(err));
    }
    return err;
}

// ─── Состояние ───────────────────────────────────────────────────────────────

static void notify_state() {
    screen_msg_t msg = {};
    msg.type = SCREEN_MSG_LINK_CHANGED;

    for (uint8_t i = 0; i < state_subscriber_count; i++) {
        if (xQueueSend(state_subscribers[i], &msg, 0) != pdTRUE) {
            ESP_LOGW(TAG, "notify_state: queue %u full", i);
        }
    }
}

static void set_state(espnow_link_state_t value) {
    if (state.load() == value) {
        return;
    }
    state.store((uint8_t)value);
    notify_state();
}

// Запомнить новый MAC монтировки: peer в ESP-NOW, NVS, состояние
static void set_peer(const uint8_t mac[ESP_NOW_ETH_ALEN]) {
    if (paired && memcmp(peer_mac, mac, ESP_NOW_ETH_ALEN) != 0) {
        esp_now_del_peer(peer_mac);   // старую монтировку забываем
    }

    if (add_peer(mac) != ESP_OK) {
        return;
    }

    taskENTER_CRITICAL(&peer_lock);
    memcpy(peer_mac, mac, ESP_NOW_ETH_ALEN);
    paired = true;
    taskEXIT_CRITICAL(&peer_lock);

    nvs_save_peer(mac);
    ESP_LOGI(TAG, "paired with " MACSTR, MAC2STR(mac));
}

// ─── Колбэки ESP-NOW (выполняются в задаче Wi-Fi: только копия в очередь) ────
// Для broadcast event.ok всегда будет true - по стандарту WiFi не ждет ACK
// Для unicast - по стандарту ждем ACK если нет то идет повтор сообщения на уровне драйвера
static void on_sent(const esp_now_send_info_t *tx_info, esp_now_send_status_t status) {
    espnow_event_t event = {};
    event.type = ESPNOW_EVENT_TX_DONE;
    event.ok = (status == ESP_NOW_SEND_SUCCESS);

    xQueueSend(event_queue, &event, 0);
}

// Фильтр «от монтировки ли пакет» — в задаче, а не здесь: peer_mac меняет задача
static void on_received(const esp_now_recv_info_t *info, const uint8_t *data, int len) {
    if (info == nullptr || data == nullptr || len <= 0 || len > ESPNOW_LINK_MAX_DATA) {
        return;
    }

    espnow_event_t event = {};
    event.type = ESPNOW_EVENT_RX;
    memcpy(event.packet.mac, info->src_addr, ESP_NOW_ETH_ALEN);
    event.packet.len = (uint8_t)len;
    memcpy(event.packet.data, data, (size_t)len);

    xQueueSend(event_queue, &event, 0);   // очередь полна — пакет теряется
}

// ─── Внутри задачи ───────────────────────────────────────────────────────────

static bool packet_is(const espnow_packet_t &packet, const char *text) {
    size_t n = strlen(text);
    return packet.len == n && memcmp(packet.data, text, n) == 0;
}

static void send_raw(const uint8_t mac[ESP_NOW_ETH_ALEN], const uint8_t *data, size_t len) {
    esp_err_t err = esp_now_send(mac, data, len);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "esp_now_send failed (%s)", esp_err_to_name(err));
    }
}

static void send_pair_request() {
    send_raw(BROADCAST_MAC, (const uint8_t *)ESPNOW_PAIR_REQUEST, strlen(ESPNOW_PAIR_REQUEST));
}

static void pair_start() {
    ESP_LOGI(TAG, "pairing: searching for mount...");
    pairing = true;

    TickType_t now = xTaskGetTickCount();
    pair_deadline = now + pdMS_TO_TICKS(ESPNOW_PAIR_TIMEOUT_MS);
    pair_next_request = now + pdMS_TO_TICKS(ESPNOW_PAIR_REQUEST_MS);

    send_pair_request();
    set_state(ESPNOW_LINK_PAIRING);
}

// Поиск закончен: найдена монтировка или вышло время
static void pair_finish(bool found) {
    pairing = false;

    if (!found) {
        ESP_LOGW(TAG, "pairing: mount not found in %d ms", ESPNOW_PAIR_TIMEOUT_MS);
    }
    set_state(paired ? ESPNOW_LINK_PAIRED : ESPNOW_LINK_NOT_PAIRED);
}

// Вызывается после каждого события и по таймауту очереди
static void pair_tick() {
    if (!pairing) {
        return;
    }

    TickType_t now = xTaskGetTickCount();

    if ((int32_t)(now - pair_deadline) >= 0) {
        pair_finish(false);
        return;
    }

    if ((int32_t)(now - pair_next_request) >= 0) {
        send_pair_request();
        pair_next_request = now + pdMS_TO_TICKS(ESPNOW_PAIR_REQUEST_MS);
    }
}

static void unpair() {
    if (paired) {
        esp_now_del_peer(peer_mac);
    }

    taskENTER_CRITICAL(&peer_lock);
    memset(peer_mac, 0, sizeof(peer_mac));
    paired = false;
    taskEXIT_CRITICAL(&peer_lock);

    nvs_erase_peer();
    pairing = false;
    ESP_LOGI(TAG, "unpaired: commands go to broadcast");
    set_state(ESPNOW_LINK_NOT_PAIRED);
}

static void publish_rx(const espnow_packet_t &packet) {
    for (uint8_t i = 0; i < rx_subscriber_count; i++) {
        if (xQueueSend(rx_subscribers[i], &packet, 0) != pdTRUE) {
            ESP_LOGW(TAG, "publish_rx: queue %u full", i);
        }
    }
}

static void handle_rx(const espnow_packet_t &packet) {
    // Ответ на поиск: MAC монтировки — это адрес отправителя
    if (packet_is(packet, ESPNOW_PAIR_REPLY)) {
        if (pairing) {
            set_peer(packet.mac);
            pair_finish(true);
        }
        return;
    }

    // Чужие служебные сообщения (например, "?PAIR" от другого пульта) — не нам
    if (packet.data[0] == '?' || packet.data[0] == '!') {
        return;
    }

    // Сопряжены — принимаем только от своей монтировки
    if (paired && memcmp(packet.mac, peer_mac, ESP_NOW_ETH_ALEN) != 0) {
        return;
    }

    ESP_LOGI(TAG, "RX " MACSTR " %u bytes: %.*s", MAC2STR(packet.mac),
             packet.len, (int)packet.len, (const char *)packet.data);
    publish_rx(packet);
}

static void task_espnow_link(void* args) {
    espnow_event_t event;

    while (true) {
        // пока идёт поиск, просыпаемся раз в ESPNOW_PAIR_REQUEST_MS для повтора "?PAIR"
        TickType_t wait = pairing ? pdMS_TO_TICKS(ESPNOW_PAIR_REQUEST_MS) : portMAX_DELAY;

        if (xQueueReceive(event_queue, &event, wait) == pdTRUE) {
            switch (event.type) {
                case ESPNOW_EVENT_TX:
                    send_raw(paired ? peer_mac : BROADCAST_MAC, event.packet.data, event.packet.len);
                    break;

                case ESPNOW_EVENT_TX_DONE:
                    // при broadcast подтверждения нет: всегда ok
                    if (!event.ok) {
                        ESP_LOGW(TAG, "TX not delivered");
                    }
                    break;

                case ESPNOW_EVENT_RX:
                    handle_rx(event.packet);
                    break;

                case ESPNOW_EVENT_PAIR_START:
                    pair_start();
                    break;

                case ESPNOW_EVENT_UNPAIR:
                    unpair();
                    break;
            }
        }

        pair_tick();
    }
}

// ─── Запуск ──────────────────────────────────────────────────────────────────

// Wi-Fi нужен только как радио: без роутера и без подключения
static esp_err_t wifi_start() {
    // NVS: Wi-Fi хранит в ней калибровку радио, мы — MAC монтировки
    esp_err_t err = nvs_flash_init();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        err = nvs_flash_init();
    }
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "nvs_flash_init failed (%s)", esp_err_to_name(err));
        return err;
    }

    err = esp_netif_init();
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "esp_netif_init failed (%s)", esp_err_to_name(err));
        return err;
    }

    err = esp_event_loop_create_default();
    if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {   // INVALID_STATE — уже создан
        ESP_LOGE(TAG, "esp_event_loop_create_default failed (%s)", esp_err_to_name(err));
        return err;
    }

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    err = esp_wifi_init(&cfg);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "esp_wifi_init failed (%s)", esp_err_to_name(err));
        return err;
    }

    ESP_ERROR_CHECK(esp_wifi_set_storage(WIFI_STORAGE_RAM));   // настройки Wi-Fi во flash не пишем
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_start());
    ESP_ERROR_CHECK(esp_wifi_set_channel(ESPNOW_LINK_CHANNEL, WIFI_SECOND_CHAN_NONE));

    uint8_t mac[ESP_NOW_ETH_ALEN];
    esp_wifi_get_mac(WIFI_IF_STA, mac);
    ESP_LOGI(TAG, "this board MAC " MACSTR ", channel %d", MAC2STR(mac), ESPNOW_LINK_CHANNEL);

    return ESP_OK;
}

static esp_err_t espnow_start() {
    esp_err_t err = esp_now_init();
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "esp_now_init failed (%s)", esp_err_to_name(err));
        return err;
    }

    ESP_ERROR_CHECK(esp_now_register_send_cb(on_sent));
    ESP_ERROR_CHECK(esp_now_register_recv_cb(on_received));

    // broadcast нужен всегда: через него идёт поиск "?PAIR"
    err = add_peer(BROADCAST_MAC);
    if (err != ESP_OK) {
        return err;
    }

    uint8_t saved[ESP_NOW_ETH_ALEN];
    if (nvs_load_peer(saved) && add_peer(saved) == ESP_OK) {
        memcpy(peer_mac, saved, ESP_NOW_ETH_ALEN);
        paired = true;
        state.store(ESPNOW_LINK_PAIRED);
        ESP_LOGI(TAG, "mount from NVS: " MACSTR, MAC2STR(peer_mac));
    }
    else {
        ESP_LOGI(TAG, "not paired: commands go to broadcast (MENU > Link > Pair)");
    }

    return ESP_OK;
}

esp_err_t espnow_link_init() {
    // очередь — до колбэков: они пишут в неё
    event_queue = xQueueCreate(ESPNOW_LINK_QUEUE_LENGTH, sizeof(espnow_event_t));
    if (event_queue == nullptr) {
        ESP_LOGE(TAG, "espnow_link_init: can't create queue");
        return ESP_ERR_NO_MEM;
    }

    esp_err_t err = wifi_start();
    if (err != ESP_OK) {
        return err;
    }

    err = espnow_start();
    if (err != ESP_OK) {
        return err;
    }

    BaseType_t created = xTaskCreate(task_espnow_link, "task_espnow_link", ESPNOW_LINK_TASK_STACK,
                                     NULL, ESPNOW_LINK_TASK_PRIORITY, NULL);
    if (created != pdPASS) {
        ESP_LOGE(TAG, "espnow_link_init: can't create task");
        return ESP_ERR_NO_MEM;
    }

    return ESP_OK;
}

// ─── API ─────────────────────────────────────────────────────────────────────

static esp_err_t add_subscriber(QueueHandle_t *list, uint8_t *count, QueueHandle_t queue) {
    if (queue == nullptr) {
        return ESP_ERR_INVALID_ARG;
    }
    if (*count >= ESPNOW_LINK_MAX_SUBSCRIBERS) {
        ESP_LOGE(TAG, "too many subscribers");
        return ESP_ERR_NO_MEM;
    }
    list[(*count)++] = queue;
    return ESP_OK;
}

esp_err_t espnow_link_subscribe_rx(QueueHandle_t queue) {
    return add_subscriber(rx_subscribers, &rx_subscriber_count, queue);
}

esp_err_t espnow_link_subscribe_state(QueueHandle_t queue) {
    return add_subscriber(state_subscribers, &state_subscriber_count, queue);
}

// Положить событие в очередь задачи
static esp_err_t post(const espnow_event_t &event) {
    if (event_queue == nullptr) {
        return ESP_ERR_INVALID_STATE;
    }
    if (xQueueSend(event_queue, &event, pdMS_TO_TICKS(ESPNOW_LINK_SEND_TIMEOUT_MS)) != pdTRUE) {
        ESP_LOGE(TAG, "post: queue full, event %d lost", (int)event.type);
        return ESP_ERR_TIMEOUT;
    }
    return ESP_OK;
}

esp_err_t espnow_link_send(const uint8_t *data, size_t len) {
    if (data == nullptr || len == 0 || len > ESPNOW_LINK_MAX_DATA) {
        return ESP_ERR_INVALID_ARG;
    }

    espnow_event_t event = {};
    event.type = ESPNOW_EVENT_TX;
    event.packet.len = (uint8_t)len;
    memcpy(event.packet.data, data, len);

    return post(event);
}

esp_err_t espnow_link_pair_start() {
    espnow_event_t event = {};
    event.type = ESPNOW_EVENT_PAIR_START;
    return post(event);
}

esp_err_t espnow_link_unpair() {
    espnow_event_t event = {};
    event.type = ESPNOW_EVENT_UNPAIR;
    return post(event);
}

espnow_link_state_t espnow_link_get_state() {
    return (espnow_link_state_t)state.load();
}

bool espnow_link_get_peer(uint8_t mac[ESP_NOW_ETH_ALEN]) {
    taskENTER_CRITICAL(&peer_lock);
    bool result = paired;
    memcpy(mac, peer_mac, ESP_NOW_ETH_ALEN);
    taskEXIT_CRITICAL(&peer_lock);
    return result;
}
