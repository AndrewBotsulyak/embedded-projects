# menu — задача меню

## Какую задачу решает

Меню — это списки пунктов, по которым ходят кнопками. Им занимается **одна задача**
`task_menu`: она получает сообщения в очередь, ходит по меню и сама себя рисует.
Снаружи о меню известно только две функции: `menu_init()` и `menu_show()`.

```
task_button_handler ── SCREEN_MSG_BUTTON ───────►┐
task_mount_link     ── SCREEN_MSG_MOUNT_CHANGED ─┼──► очередь ──► task_menu ──► menu_nav ──► menu_view (OLED)
main_screen: menu_show(back) ─ SCREEN_MSG_SHOW ─►┘                  │
                                                                    │ меню закрыли
                                          SCREEN_MSG_SHOW ◄─────────┘ в очередь back
```

Меню не знает про главный экран: экран оно возвращает в очередь `back`, которую
прислали вместе с `SCREEN_MSG_SHOW`.

## Файлы

| Файл | Кто использует | Что внутри |
|---|---|---|
| `menu.h` | `app_main`, main_screen | `menu_init()`, `menu_show(back)` |
| `menu.cpp` | — | очередь, задача `task_menu`, кнопка → событие навигации |
| `menu_nav.h/.cpp` | только эта задача | типы меню и навигация (курсор, стек, выбор значения) |
| `menu_items.h/.cpp` | только эта задача | **данные**: пункты Speed, Tracking, Display и их `get`/`set` |
| `menu_view.h/.cpp` | только эта задача | отрисовка меню на OLED |

## Меню описано данными

```
MENU_ROOT  "MENU"
 ├── "Speed"     CHOICE {GUIDE, CENTER, FIND, SLEW}  get/set → settings + :R?#
 ├── "Tracking"  CHOICE {OFF, ON}                    get → mount_link_get_tracking, set → :Te#/:Td#
 ├── "Display"   CHOICE {LOW, MID, HIGH}             get/set → settings + oled_set_contrast
 └── "Link"      SUBMENU ──► LINK_MENU "LINK"        справа: состояние сопряжения
                  ├── "Pair"    ACTION → espnow_link_pair_start()   справа: NONE / SEARCH.. / PAIRED
                  ├── "Unpair"  ACTION → espnow_link_unpair()
                  └── "Mount"   INFO   справа: последние 3 байта MAC монтировки или "-"
```

Новый пункт — новая строка в `MAIN_ITEMS` (`menu_items.cpp`).

| Тип пункта | ENTER / ► | Когда использовать |
|---|---|---|
| `MENU_ITEM_SUBMENU` | открыть вложенное меню | группа **разных** пунктов |
| `MENU_ITEM_CHOICE` | открыть список значений, выбор → `set()` | **одна** настройка с вариантами |
| `MENU_ITEM_ACTION` | вызвать функцию | разовое действие |
| `MENU_ITEM_INFO` | ничего | строка только показывает значение |

У любого пункта, кроме `CHOICE`, может быть `value()` — функция, которая возвращает текст
справа (`Link  PAIRED`). У `CHOICE` справа всегда `names[get()]`.

## Почему `get` / `set`, а не указатель на значение

```cpp
typedef struct {
    const char *const *names;
    uint8_t            count;
    uint8_t          (*get)(void);          // текущее значение
    void             (*set)(uint8_t value); // выбрали значение
} menu_choice_t;
```

Меню **не хранит** значения и не пишет в чужие данные. Tracking — это состояние
монтировки, которым владеет `task_mount_link`. Меню только просит его поменять
(`set` → `mount_link_tracking`), а показывает то, что вернёт `get`.

## Навигация (`menu_nav`)

```cpp
menu_state_t {
    stack[4]       // путь от корня: {меню, позиция курсора}
    depth          // 0 — меню закрыто
    choice         // не nullptr — открыт список значений
    choice_cursor
}
```

| Кнопка | Список пунктов | Список значений |
|---|---|---|
| ▲ ▼ | курсор по кругу | курсор по кругу |
| ► / ENTER | войти / выбрать | `set()`, вернуться к пунктам |
| ◄ | назад; с верхнего уровня — закрыть меню | назад **без изменений** |
| MENU | закрыть меню | закрыть меню |
| STOP | не доходит до меню (его обрабатывает main_screen) | |

## Задача

| Сообщение | Действие |
|---|---|
| `SCREEN_MSG_SHOW` | запомнить `back`, открыть с корня, `active = true`, нарисовать |
| `SCREEN_MSG_BUTTON` | только если `active` и кнопку **нажали**: навигация; закрыли → вернуть экран в `back` |
| `SCREEN_MSG_MOUNT_CHANGED` | перерисовать, если `active` (например, Tracking стал OFF после STOP) |
| `SCREEN_MSG_LINK_CHANGED` | перерисовать, если `active` (Link: `SEARCH..` → `PAIRED`) |

| Параметр | Значение |
|---|---|
| Очередь | 16 × `screen_msg_t` |
| Стек | 3072 байта |
| Приоритет | 5 (как main_screen) |

## Отрисовка (`menu_view`)

```
строка 0     MENU                  заголовок большими буквами
строка 1     ─────────────         линия
строки 2..7  > Speed     GUIDE     "> " курсор, название, значение из get()
```

В списке значений: `> * GUIDE` — `>` курсор, `*` текущее значение. Больше 6 пунктов —
список прокручивается.

## Порядок запуска

`menu_init()` — после `espnow_link_init()` и `mount_link_init()` (на них подписка),
до `main_screen_init()` и `init_btn_handler()`.
