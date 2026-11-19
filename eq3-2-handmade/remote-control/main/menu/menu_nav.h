#ifndef MENU_NAV_H
#define MENU_NAV_H

#include <cstdint>

// Навигация по табличному меню. Только для задачи menu (menu.cpp) и отрисовки (menu_view.cpp).
// Ничего не знает про кнопки, задачи, OLED и монтировку: на вход событие, наружу состояние.

#define MENU_MAX_DEPTH 4   // максимальная вложенность подменю

// ─── События навигации ───────────────────────────────────────────────────────

typedef enum {
    MENU_EVENT_UP,
    MENU_EVENT_DOWN,
    MENU_EVENT_LEFT,    // назад
    MENU_EVENT_RIGHT,   // войти
    MENU_EVENT_ENTER,   // выбрать
    MENU_EVENT_MENU,    // закрыть меню целиком
} menu_event_t;

// ─── Описание меню ───────────────────────────────────────────────────────────

typedef enum {
    MENU_ITEM_SUBMENU,   // ENTER — открыть вложенное меню
    MENU_ITEM_CHOICE,    // ENTER — выбрать одно значение из списка
    MENU_ITEM_ACTION,    // ENTER — вызвать функцию
    MENU_ITEM_INFO,      // ENTER — ничего: строка только показывает значение (value)
} menu_item_kind_t;

struct menu_t;

// Выбор одного значения из списка.
// Значение меню не хранит: читает через get(), записывает через set().
// Так меню не лезет в чужие данные (настройки, копию состояния монтировки)
typedef struct {
    const char *const *names;              // названия значений: {"OFF", "ON"}
    uint8_t            count;              // сколько названий
    uint8_t          (*get)(void);         // текущее значение (индекс в names)
    void             (*set)(uint8_t value);// выбрали значение
} menu_choice_t;

typedef struct {
    const char          *title;           // текст пункта: "Speed"
    menu_item_kind_t     kind;
    const struct menu_t *submenu;         // для MENU_ITEM_SUBMENU
    const menu_choice_t *choice;          // для MENU_ITEM_CHOICE
    void               (*action)(void);   // для MENU_ITEM_ACTION
    const char*        (*value)(void);    // текст справа для SUBMENU / ACTION / INFO (или nullptr).
                                          // У CHOICE справа всегда names[get()]
} menu_item_t;

typedef struct menu_t {
    const char        *title;   // заголовок экрана: "MENU"
    const menu_item_t *items;   // пункты
    uint8_t            count;
} menu_t;

// ─── Состояние навигации (для отрисовки) ─────────────────────────────────────

typedef struct {
    const menu_t *menu;
    uint8_t       cursor;   // на каком пункте стоит «>»
} menu_level_t;

typedef struct {
    menu_level_t         stack[MENU_MAX_DEPTH];  // путь от корня до текущего меню
    uint8_t              depth;                  // 0 — меню закрыто
    const menu_choice_t *choice;                 // не nullptr — открыт список значений
    uint8_t              choice_cursor;
} menu_state_t;

// ─── API ─────────────────────────────────────────────────────────────────────

void menu_nav_open(const menu_t *root);   // открыть меню с корня
void menu_nav_close();
bool menu_nav_is_open();

// Обработать событие. true — что-то изменилось, экран нужно перерисовать
bool menu_nav_handle(menu_event_t event);

const menu_state_t* menu_nav_get_state();

#endif // MENU_NAV_H
