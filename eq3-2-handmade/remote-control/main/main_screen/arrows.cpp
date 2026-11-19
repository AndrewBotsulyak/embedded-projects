#include "arrows.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "mount_link.h"

static const lx200_dir_t ALL_DIRS[] = {LX200_DIR_N, LX200_DIR_S, LX200_DIR_E, LX200_DIR_W};

#define DIR_COUNT (sizeof(ALL_DIRS) / sizeof(ALL_DIRS[0]))

static bool       held[DIR_COUNT] = {};   // индекс — lx200_dir_t
static TickType_t last_send = 0;          // когда последний раз отправляли :M?#

void arrows_press(lx200_dir_t dir, lx200_rate_t rate) {
    mount_link_rate(rate);
    mount_link_move(dir);

    held[dir] = true;
    last_send = xTaskGetTickCount();
}

bool arrows_release(lx200_dir_t dir) {
    if (!held[dir]) {
        return false;
    }

    held[dir] = false;
    mount_link_stop_dir(dir);
    return true;
}

bool arrows_release_all() {
    bool any = false;

    for (lx200_dir_t dir : ALL_DIRS) {
        if (arrows_release(dir)) {
            any = true;
        }
    }
    return any;
}

void arrows_forget_all() {
    for (lx200_dir_t dir : ALL_DIRS) {
        held[dir] = false;
    }
}

bool arrows_is_held(lx200_dir_t dir) {
    return held[dir];
}

bool arrows_any_held() {
    for (lx200_dir_t dir : ALL_DIRS) {
        if (held[dir]) {
            return true;
        }
    }
    return false;
}

void arrows_repeat() {
    if (!arrows_any_held()) {
        return;
    }

    TickType_t now = xTaskGetTickCount();
    if (now - last_send < pdMS_TO_TICKS(ARROWS_REPEAT_MS)) {
        return;
    }

    for (lx200_dir_t dir : ALL_DIRS) {
        if (held[dir]) {
            mount_link_move(dir);
        }
    }
    last_send = now;
}
