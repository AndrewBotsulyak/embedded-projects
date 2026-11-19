#include "main_view.h"

#include <cstddef>
#include <cstdio>
#include "arrows.h"
#include "lx200_format.h"
#include "mount_link.h"
#include "oled_device.h"
#include "settings.h"

#define VIEW_LINE_Y 11   // линия посередине строки 1, как в меню

// Зажатые стрелки буквами: "N E". Ни одной — "-"
static void held_dirs_text(char *out, size_t size) {
    static const lx200_dir_t DIRS[]   = {LX200_DIR_N, LX200_DIR_S, LX200_DIR_E, LX200_DIR_W};
    static const char        LETTERS[] = {'N', 'S', 'E', 'W'};

    size_t len = 0;
    for (size_t i = 0; i < sizeof(DIRS) / sizeof(DIRS[0]); i++) {
        if (arrows_is_held(DIRS[i]) && len + 3 <= size) {   // буква + пробел + '\0'
            out[len++] = LETTERS[i];
            out[len++] = ' ';
        }
    }

    if (len == 0) {
        snprintf(out, size, "-");
        return;
    }
    out[len - 1] = '\0';   // убрать последний пробел
}

esp_err_t main_view_draw() {
    char line[OLED_TEXT_COLS + 1];
    char dirs[8];

    oled_clear();

    oled_draw_text(0, 0, "EQ3-2 REMOTE");
    oled_draw_hline(VIEW_LINE_Y);

    // Ведение и авария — из ответа монтировки на :GU#. Без связи ведение неизвестно
    bool connected = mount_link_is_connected();
    const char *tracking = !connected ? "?" : (mount_link_get_tracking() ? "ON" : "OFF");
    snprintf(line, sizeof(line), "Tracking: %s", tracking);
    oled_draw_text(2, 0, line);

    snprintf(line, sizeof(line), "Speed:    %s", settings_arrow_rate_name(settings_get_arrow_rate()));
    oled_draw_text(3, 0, line);

    held_dirs_text(dirs, sizeof(dirs));
    snprintf(line, sizeof(line), "Move:     %s", dirs);
    oled_draw_text(4, 0, line);

    if (!connected) {
        oled_draw_text(5, 0, "Link:     LOST");
    } else if (mount_link_is_fault()) {
        oled_draw_text(5, 0, "Mount:    FAULT!");
    } else {
        oled_draw_text(5, 0, "Link:     OK");
    }

    oled_draw_text(6, 0, "ENTER: speed");
    oled_draw_text(7, 0, "MENU:  menu");

    return oled_flush();
}
