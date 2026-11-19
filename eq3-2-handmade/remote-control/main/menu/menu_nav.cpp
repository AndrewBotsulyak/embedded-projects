#include "menu_nav.h"

static menu_state_t state = {};

// Курсор вверх/вниз по кругу: с первого пункта вверх — на последний
static uint8_t cursor_move(uint8_t cursor, uint8_t count, bool up) {
    if (count == 0) {
        return 0;
    }
    if (up) {
        return (cursor == 0) ? count - 1 : cursor - 1;
    }
    return (cursor + 1 >= count) ? 0 : cursor + 1;
}

// Событие в открытом списке значений (CHOICE)
static bool handle_choice(menu_event_t event) {
    const menu_choice_t *choice = state.choice;

    switch (event) {
        case MENU_EVENT_UP:
        case MENU_EVENT_DOWN:
            state.choice_cursor = cursor_move(state.choice_cursor, choice->count, event == MENU_EVENT_UP);
            return true;

        case MENU_EVENT_RIGHT:
        case MENU_EVENT_ENTER:
            if (choice->set != nullptr) {
                choice->set(state.choice_cursor);
            }
            state.choice = nullptr;
            return true;

        case MENU_EVENT_LEFT:   // назад без изменений
            state.choice = nullptr;
            return true;

        case MENU_EVENT_MENU:
            menu_nav_close();
            return true;
    }
    return false;
}

// Событие в списке пунктов
static bool handle_items(menu_event_t event) {
    menu_level_t *level = &state.stack[state.depth - 1];
    const menu_item_t *item = &level->menu->items[level->cursor];

    switch (event) {
        case MENU_EVENT_UP:
        case MENU_EVENT_DOWN:
            level->cursor = cursor_move(level->cursor, level->menu->count, event == MENU_EVENT_UP);
            return true;

        case MENU_EVENT_RIGHT:
        case MENU_EVENT_ENTER:
            switch (item->kind) {
                case MENU_ITEM_SUBMENU:
                    if (item->submenu == nullptr || state.depth >= MENU_MAX_DEPTH) {
                        return false;
                    }
                    state.stack[state.depth].menu = item->submenu;
                    state.stack[state.depth].cursor = 0;
                    state.depth++;
                    return true;

                case MENU_ITEM_CHOICE:
                    if (item->choice == nullptr || item->choice->get == nullptr) {
                        return false;
                    }
                    state.choice = item->choice;
                    state.choice_cursor = item->choice->get();   // курсор на текущем значении
                    return true;

                case MENU_ITEM_ACTION:
                    if (item->action == nullptr) {
                        return false;
                    }
                    item->action();
                    return true;

                case MENU_ITEM_INFO:
                    return false;
            }
            return false;

        case MENU_EVENT_LEFT:   // назад на уровень; с верхнего — закрыть меню
            state.depth--;
            return true;

        case MENU_EVENT_MENU:
            menu_nav_close();
            return true;
    }
    return false;
}

void menu_nav_open(const menu_t *root) {
    state.stack[0].menu = root;
    state.stack[0].cursor = 0;
    state.depth = 1;
    state.choice = nullptr;
    state.choice_cursor = 0;
}

void menu_nav_close() {
    state.depth = 0;
    state.choice = nullptr;
}

bool menu_nav_is_open() {
    return state.depth > 0;
}

bool menu_nav_handle(menu_event_t event) {
    if (!menu_nav_is_open()) {
        return false;
    }

    if (state.choice != nullptr) {
        return handle_choice(event);
    }

    return handle_items(event);
}

const menu_state_t* menu_nav_get_state() {
    return &state;
}
