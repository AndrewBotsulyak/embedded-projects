#include "menu_view.h"

#include <cctype>
#include <cstdint>
#include <cstdio>
#include "menu_nav.h"
#include "oled_device.h"

#define VIEW_TITLE_ROW     0
#define VIEW_LINE_Y        11                          // линия посередине строки 1
#define VIEW_FIRST_ROW     2
#define VIEW_VISIBLE_ROWS  (OLED_TEXT_ROWS - VIEW_FIRST_ROW)   // 6 пунктов на экране
#define VIEW_TITLE_WIDTH   10                          // ширина колонки с названием пункта

// Первый видимый пункт: список прокручивается так, чтобы курсор оставался на экране
static uint8_t first_visible(uint8_t cursor) {
    return (cursor < VIEW_VISIBLE_ROWS) ? 0 : (uint8_t)(cursor - VIEW_VISIBLE_ROWS + 1);
}

// Заголовок и линия под ним
static void draw_header(const char *title) {
    char line[OLED_TEXT_COLS + 1];
    size_t i = 0;

    for (; title[i] != '\0' && i < OLED_TEXT_COLS; i++) {
        line[i] = (char)toupper((unsigned char)title[i]);   // заголовок большими буквами
    }
    line[i] = '\0';

    oled_draw_text(VIEW_TITLE_ROW, 0, line);
    oled_draw_hline(VIEW_LINE_Y);
}

// Список пунктов:  "> Mode      TRACK"
static void draw_items(const menu_level_t *level) {
    const menu_t *menu = level->menu;
    uint8_t start = first_visible(level->cursor);

    draw_header(menu->title);

    for (uint8_t row = 0; row < VIEW_VISIBLE_ROWS; row++) {
        uint8_t index = start + row;
        if (index >= menu->count) {
            break;
        }

        const menu_item_t *item = &menu->items[index];
        const char *marker = (index == level->cursor) ? "> " : "  ";
        const char *value = "";

        if (item->kind == MENU_ITEM_CHOICE && item->choice != nullptr && item->choice->get != nullptr) {
            value = item->choice->names[item->choice->get()];
        }
        else if (item->value != nullptr) {
            value = item->value();
        }

        char line[OLED_TEXT_COLS + 1];
        snprintf(line, sizeof(line), "%s%-*s%s", marker, VIEW_TITLE_WIDTH, item->title, value);
        oled_draw_text(VIEW_FIRST_ROW + row, 0, line);
    }
}

// Список значений:  "> * TRACK"  (> — курсор, * — текущее значение)
static void draw_choice(const menu_state_t *state) {
    const menu_level_t *level = &state->stack[state->depth - 1];
    const menu_item_t *item = &level->menu->items[level->cursor];
    const menu_choice_t *choice = state->choice;
    uint8_t start = first_visible(state->choice_cursor);
    uint8_t current_value = choice->get();

    draw_header(item->title);

    for (uint8_t row = 0; row < VIEW_VISIBLE_ROWS; row++) {
        uint8_t index = start + row;
        if (index >= choice->count) {
            break;
        }

        const char *marker = (index == state->choice_cursor) ? "> " : "  ";
        const char *current = (index == current_value) ? "* " : "  ";

        char line[OLED_TEXT_COLS + 1];
        snprintf(line, sizeof(line), "%s%s%s", marker, current, choice->names[index]);
        oled_draw_text(VIEW_FIRST_ROW + row, 0, line);
    }
}

esp_err_t menu_draw() {
    const menu_state_t *state = menu_nav_get_state();

    oled_clear();

    if (state->depth > 0) {
        if (state->choice != nullptr) {
            draw_choice(state);
        }
        else {
            draw_items(&state->stack[state->depth - 1]);
        }
    }

    return oled_flush();
}
