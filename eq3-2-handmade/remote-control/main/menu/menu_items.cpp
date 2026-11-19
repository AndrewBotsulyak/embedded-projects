#include "menu_items.h"

#include <cstdio>
#include "esp_log.h"
#include "espnow_link.h"
#include "lx200_format.h"
#include "mount_link.h"
#include "oled_device.h"
#include "settings.h"

static const char* TAG = "MENU_ITEMS";

// ─── Speed: скорость стрелок (настройка пульта) ──────────────────────────────
// Главный по скорости — пульт: при выборе сразу отправляем монтировке.
// Перед каждым нажатием стрелки она отправляется ещё раз (main_screen/arrows.cpp)

static uint8_t speed_get() {
    return (uint8_t)settings_get_arrow_rate();
}

static void speed_set(uint8_t value) {
    ESP_LOGI(TAG, "speed_set: %u", value);
    settings_set_arrow_rate((lx200_rate_t)value);
    mount_link_rate(settings_get_arrow_rate());
}

// ─── Tracking: ведение (состояние монтировки) ────────────────────────────────
// Значение читается из копии состояния монтировки, а не хранится в меню.
// Если монтировка откажет (например, в аварии), копия изменится,
// и меню перерисуется по SCREEN_MSG_MOUNT_CHANGED

static const char *const TRACKING_NAMES[] = {"OFF", "ON"};

static uint8_t tracking_get() {
    return mount_link_get_tracking();
}

static void tracking_set(uint8_t value) {
    ESP_LOGI(TAG, "tracking_set: %u", value);
    mount_link_tracking(value != 0);
}

// ─── Display: яркость экрана (настройка пульта) ──────────────────────────────

static const char *const DISPLAY_NAMES[] = {"LOW", "MID", "HIGH"};

static uint8_t display_get() {
    return (uint8_t)settings_get_brightness();
}

static void display_set(uint8_t value) {
    ESP_LOGI(TAG, "display_set: %u", value);
    settings_set_brightness((settings_brightness_t)value);
    oled_set_contrast(settings_get_contrast());
}

// ─── Link: сопряжение с монтировкой (info/pairing.md) ────────────────────────
// Поиск идёт в task_espnow_link. Меню только просит начать и перерисовывается
// по SCREEN_MSG_LINK_CHANGED

static const char* link_state_text() {
    switch (espnow_link_get_state()) {
        case ESPNOW_LINK_NOT_PAIRED: return "NONE";
        case ESPNOW_LINK_PAIRING:    return "SEARCH..";
        case ESPNOW_LINK_PAIRED:     return "PAIRED";
    }
    return "?";
}

// Последние 3 байта MAC монтировки: "AA:BB:CC" (весь MAC в строку меню не помещается)
static const char* link_mount_text() {
    static char text[9];
    uint8_t mac[ESP_NOW_ETH_ALEN];

    if (!espnow_link_get_peer(mac)) {
        return "-";
    }
    snprintf(text, sizeof(text), "%02X:%02X:%02X", mac[3], mac[4], mac[5]);
    return text;
}

static void link_pair() {
    ESP_LOGI(TAG, "link_pair");
    espnow_link_pair_start();
}

static void link_unpair() {
    ESP_LOGI(TAG, "link_unpair");
    espnow_link_unpair();
}

// ─── Таблицы ─────────────────────────────────────────────────────────────────

#define COUNT(a) (uint8_t)(sizeof(a) / sizeof((a)[0]))

static const menu_choice_t SPEED_CHOICE    = {SETTINGS_ARROW_RATE_NAMES, SETTINGS_ARROW_RATE_COUNT, speed_get,    speed_set};
static const menu_choice_t TRACKING_CHOICE = {TRACKING_NAMES,            COUNT(TRACKING_NAMES),     tracking_get, tracking_set};
static const menu_choice_t DISPLAY_CHOICE  = {DISPLAY_NAMES,             COUNT(DISPLAY_NAMES),      display_get,  display_set};

static const menu_item_t LINK_ITEMS[] = {
    //  title       kind              submenu  choice   action       value
    { "Pair",     MENU_ITEM_ACTION, nullptr, nullptr, link_pair,   link_state_text },
    { "Unpair",   MENU_ITEM_ACTION, nullptr, nullptr, link_unpair, nullptr         },
    { "Mount",    MENU_ITEM_INFO,   nullptr, nullptr, nullptr,     link_mount_text },
};

static const menu_t LINK_MENU = {
    "LINK",
    LINK_ITEMS,
    COUNT(LINK_ITEMS),
};

static const menu_item_t MAIN_ITEMS[] = {
    //  title       kind               submenu     choice            action   value
    { "Speed",    MENU_ITEM_CHOICE,  nullptr,    &SPEED_CHOICE,    nullptr, nullptr         },
    { "Tracking", MENU_ITEM_CHOICE,  nullptr,    &TRACKING_CHOICE, nullptr, nullptr         },
    { "Display",  MENU_ITEM_CHOICE,  nullptr,    &DISPLAY_CHOICE,  nullptr, nullptr         },
    { "Link",     MENU_ITEM_SUBMENU, &LINK_MENU, nullptr,          nullptr, link_state_text },
};

const menu_t MENU_ROOT = {
    "MENU",
    MAIN_ITEMS,
    COUNT(MAIN_ITEMS),
};
