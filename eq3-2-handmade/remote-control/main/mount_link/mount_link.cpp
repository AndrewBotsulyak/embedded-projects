#include "mount_link.h"

#include <atomic>
#include <cstddef>
#include <cstring>
#include "esp_log.h"
#include "espnow_link.h"
#include "freertos/task.h"
#include "lx200_commands.h"
#include "screen_msg.h"

static const char* TAG = "MOUNT_LINK";

#define MOUNT_LINK_QUEUE_LENGTH    16
#define MOUNT_LINK_RX_QUEUE_LENGTH 4      // ответы монтировки; пакет ~257 байт
#define MOUNT_LINK_TASK_STACK      4096   // на стеке пакет и его текст (~510 байт)
#define MOUNT_LINK_TASK_PRIORITY   7      // выше экранов (5): команда уходит сразу, как её положили
#define MOUNT_LINK_WAIT_MS         20     // сколько ждать команду, прежде чем проверить ответы и опрос

// ─── Команда в очереди задачи ────────────────────────────────────────────────

// Какую команду отправить монтировке. В комментарии — какое поле mount_cmd_t
// для неё заполнено и какая строка LX200 уйдёт
typedef enum {
    MOUNT_CMD_RATE,       // поле rate: выбрать скорость стрелок → :RG# :RC# :RM# :RS#
                          //   (сама ничего не двигает, только запоминается монтировкой)
    MOUNT_CMD_MOVE,       // поле dir: начать движение (стрелка нажата / повтор) → :Mn# :Ms# :Me# :Mw#
    MOUNT_CMD_STOP_DIR,   // поле dir: остановить ось (стрелка отпущена) → :Qn# :Qs# :Qe# :Qw#
                          //   (если идёт ведение, ось RA вернётся к скорости ведения)
    MOUNT_CMD_STOP_ALL,   // без полей: стоп всего — стрелки, GoTo и ведение → :Q#
                          //   (монтировка переходит в IDLE)
    MOUNT_CMD_TRACKING,   // поле on: включить (true) / выключить (false) ведение → :Te# / :Td#
} mount_cmd_type_t;

typedef struct {
    mount_cmd_type_t type;
    lx200_rate_t     rate;
    lx200_dir_t      dir;
    bool             on;
} mount_cmd_t;

// ─── Данные задачи ───────────────────────────────────────────────────────────

static QueueHandle_t mount_queue = nullptr;   // команды от экранов
static QueueHandle_t rx_queue    = nullptr;   // ответы монтировки от espnow_link

static QueueHandle_t subscribers[MOUNT_LINK_MAX_SUBSCRIBERS] = {};
static uint8_t       subscriber_count = 0;

// Копия состояния монтировки. Пишет только task_mount_link, читают все.
// До первого ответа: связи нет, монтировка считается в IDLE (так она стартует)
static std::atomic<bool>    connected{false};
static std::atomic<uint8_t> tracking{0};
static std::atomic<bool>    fault{false};

// Только для task_mount_link
static TickType_t last_reply = 0;   // когда пришёл последний ответ :GU#
static TickType_t next_poll  = 0;   // когда спросить :GU# в следующий раз

// ─── Внутри задачи ───────────────────────────────────────────────────────────

static void notify_changed() {
    screen_msg_t msg = {};
    msg.type = SCREEN_MSG_MOUNT_CHANGED;

    for (uint8_t i = 0; i < subscriber_count; i++) {
        if (xQueueSend(subscribers[i], &msg, 0) != pdTRUE) {
            ESP_LOGW(TAG, "notify_changed: queue %u full", i);
        }
    }
}

// Отправить готовую команду. len == 0 — команда не собралась
static void send(const char *cmd, size_t len, bool log = true) {
    if (len == 0) {
        ESP_LOGE(TAG, "send: can't build command");
        return;
    }

    if (log) {
        ESP_LOGI(TAG, "TX %s", cmd);
    }
    espnow_link_send((const uint8_t *)cmd, len);   // без '\0': по радио только ":Me#"
}

static void execute(const mount_cmd_t &cmd) {
    char buf[LX200_CMD_BUF_SIZE];
    size_t len = 0;

    switch (cmd.type) {
        case MOUNT_CMD_RATE:
            len = lx200_cmd_rate(cmd.rate, buf, sizeof(buf));
            send(buf, len);
            break;

        case MOUNT_CMD_MOVE:
            len = lx200_cmd_move(cmd.dir, buf, sizeof(buf));
            send(buf, len);
            break;

        case MOUNT_CMD_STOP_DIR:
            len = lx200_cmd_stop_dir(cmd.dir, buf, sizeof(buf));
            send(buf, len);
            break;

        case MOUNT_CMD_STOP_ALL:
            len = lx200_cmd_stop_all(buf, sizeof(buf));
            send(buf, len);
            next_poll = xTaskGetTickCount();   // состояние изменилось — спросить сразу
            break;

        case MOUNT_CMD_TRACKING:
            len = cmd.on ? lx200_cmd_tracking_on(buf, sizeof(buf))
                         : lx200_cmd_tracking_off(buf, sizeof(buf));
            send(buf, len);
            next_poll = xTaskGetTickCount();   // состояние изменилось — спросить сразу
            break;
    }
}

/*
    Пакет от монтировки. В нём бывает:
      "NpEo220#" — ответ на :GU#: обновить копию состояния;
      "1" / "0"  — ответ на :Te# / :Td#: пропускаем, состояние придёт в :GU#.
*/
static void handle_reply(const espnow_packet_t &pkt) {
    char text[ESPNOW_LINK_MAX_DATA + 1];
    memcpy(text, pkt.data, pkt.len);
    text[pkt.len] = '\0';

    lx200_status_t st;
    if (!lx200_parse_status(text, &st)) {
        ESP_LOGD(TAG, "RX \"%s\" — not a status reply, skipped", text);
        return;
    }

    last_reply = xTaskGetTickCount();

    bool changed = false;
    if (!connected.load()) {
        connected.store(true);
        ESP_LOGI(TAG, "mount answers");
        changed = true;
    }

    uint8_t new_tracking = st.tracking ? 1 : 0;
    if (tracking.load() != new_tracking) {
        tracking.store(new_tracking);
        changed = true;
    }

    bool new_fault = st.error == LX200_STATUS_ERR_MOTOR_FAULT;
    if (fault.load() != new_fault) {
        fault.store(new_fault);
        if (new_fault) {
            ESP_LOGW(TAG, "mount: driver FAULT");
        }
        changed = true;
    }

    if (changed) {
        notify_changed();
    }
}

// Пора спросить :GU#? И не пропала ли связь?
static void poll_status() {
    TickType_t now = xTaskGetTickCount();

    if ((int32_t)(now - next_poll) >= 0) {
        char buf[LX200_CMD_BUF_SIZE];
        send(buf, lx200_cmd_status(buf, sizeof(buf)), false);   // без лога: дважды в секунду
        next_poll = now + pdMS_TO_TICKS(MOUNT_LINK_POLL_MS);
    }

    if (connected.load() && now - last_reply > pdMS_TO_TICKS(MOUNT_LINK_LOST_MS)) {
        connected.store(false);
        ESP_LOGW(TAG, "no reply for %d ms — link LOST", MOUNT_LINK_LOST_MS);
        notify_changed();
    }
}

static void task_mount_link(void* args) {
    mount_cmd_t cmd;
    espnow_packet_t pkt;

    while (true) {
        // Команда от экрана уходит сразу; без команд просыпаемся раз в MOUNT_LINK_WAIT_MS,
        // чтобы разобрать ответы и вовремя спросить :GU#
        if (xQueueReceive(mount_queue, &cmd, pdMS_TO_TICKS(MOUNT_LINK_WAIT_MS)) == pdTRUE) {
            execute(cmd);
        }

        while (xQueueReceive(rx_queue, &pkt, 0) == pdTRUE) {
            handle_reply(pkt);
        }

        poll_status();
    }
}

// ─── API: положить команду в очередь ─────────────────────────────────────────

static esp_err_t post(const mount_cmd_t &cmd) {
    if (mount_queue == nullptr) {
        ESP_LOGE(TAG, "post: mount_link_init() not called");
        return ESP_ERR_INVALID_STATE;
    }

    if (xQueueSend(mount_queue, &cmd, pdMS_TO_TICKS(MOUNT_LINK_SEND_TIMEOUT_MS)) != pdTRUE) {
        ESP_LOGE(TAG, "post: queue full, command %d lost", (int)cmd.type);
        return ESP_ERR_TIMEOUT;
    }

    return ESP_OK;
}

esp_err_t mount_link_init() {
    mount_queue = xQueueCreate(MOUNT_LINK_QUEUE_LENGTH, sizeof(mount_cmd_t));
    rx_queue    = xQueueCreate(MOUNT_LINK_RX_QUEUE_LENGTH, sizeof(espnow_packet_t));

    if (mount_queue == nullptr || rx_queue == nullptr) {
        ESP_LOGE(TAG, "mount_link_init: can't create queue");
        return ESP_ERR_NO_MEM;
    }

    // Ответы монтировки. Без подписки пульт только командует, состояние не узнает
    if (espnow_link_subscribe_rx(rx_queue) != ESP_OK) {
        ESP_LOGE(TAG, "mount_link_init: can't subscribe to replies");
    }

    BaseType_t created = xTaskCreate(task_mount_link, "task_mount_link", MOUNT_LINK_TASK_STACK,
                                     NULL, MOUNT_LINK_TASK_PRIORITY, NULL);

    if (created != pdPASS) {
        ESP_LOGE(TAG, "mount_link_init: can't create task");
        return ESP_ERR_NO_MEM;
    }

    return ESP_OK;
}

esp_err_t mount_link_subscribe(QueueHandle_t queue) {
    if (queue == nullptr) {
        return ESP_ERR_INVALID_ARG;
    }
    if (subscriber_count >= MOUNT_LINK_MAX_SUBSCRIBERS) {
        ESP_LOGE(TAG, "mount_link_subscribe: too many subscribers");
        return ESP_ERR_NO_MEM;
    }

    subscribers[subscriber_count++] = queue;
    return ESP_OK;
}

bool mount_link_is_connected() {
    return connected.load();
}

uint8_t mount_link_get_tracking() {
    return tracking.load();
}

bool mount_link_is_fault() {
    return fault.load();
}

esp_err_t mount_link_rate(lx200_rate_t rate) {
    mount_cmd_t cmd = {};
    cmd.type = MOUNT_CMD_RATE;
    cmd.rate = rate;
    return post(cmd);
}

esp_err_t mount_link_move(lx200_dir_t dir) {
    mount_cmd_t cmd = {};
    cmd.type = MOUNT_CMD_MOVE;
    cmd.dir = dir;
    return post(cmd);
}

esp_err_t mount_link_stop_dir(lx200_dir_t dir) {
    mount_cmd_t cmd = {};
    cmd.type = MOUNT_CMD_STOP_DIR;
    cmd.dir = dir;
    return post(cmd);
}

esp_err_t mount_link_tracking(bool on) {
    mount_cmd_t cmd = {};
    cmd.type = MOUNT_CMD_TRACKING;
    cmd.on = on;
    return post(cmd);
}

esp_err_t mount_link_stop_all() {
    mount_cmd_t cmd = {};
    cmd.type = MOUNT_CMD_STOP_ALL;
    return post(cmd);
}
