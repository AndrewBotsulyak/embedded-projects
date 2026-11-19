# screen_msg — сообщение для задач-экранов

## Какую задачу решает

Задачи пульта не вызывают функции друг друга: они кладут **сообщения** в очереди
FreeRTOS. Чтобы в одну очередь экрана могли писать разные задачи (кнопки,
монтировка, другой экран), у всех сообщений один тип — `screen_msg_t`.

## Файлы

| Файл | Что внутри |
|---|---|
| `screen_msg.h` | `screen_msg_type_t`, `screen_msg_t` (только заголовок, без `.cpp`) |

## Сообщение

```cpp
typedef struct {
    screen_msg_type_t type;
    button_id_t       button;   // для SCREEN_MSG_BUTTON
    button_action_t   action;   // для SCREEN_MSG_BUTTON
    QueueHandle_t     back;     // для SCREEN_MSG_SHOW
} screen_msg_t;
```

| Тип | Кто отправляет | Кому | Что значит |
|---|---|---|---|
| `SCREEN_MSG_BUTTON` | `task_button_handler` | всем подписчикам кнопок | кнопку нажали / отпустили |
| `SCREEN_MSG_MOUNT_CHANGED` | `task_mount_link` | всем подписчикам монтировки | копия состояния монтировки изменилась |
| `SCREEN_MSG_LINK_CHANGED` | `task_espnow_link` | подписчикам состояния связи (menu) | сопряжение изменилось: поиск, найдена, забыта |
| `SCREEN_MSG_SHOW` | main_screen ⇄ menu | одной задаче | экран твой; `back` — кому вернуть |

## Как создавать

```cpp
screen_msg_t msg = {};          // все поля = 0
msg.type = SCREEN_MSG_SHOW;
msg.back = my_queue;
xQueueSend(queue, &msg, 0);
```

`{}` обнуляет все поля, поэтому неиспользуемые поля не мешают и не вызывают
предупреждение `missing-field-initializers`.

## Подписка

Отдельной «шины событий» нет: подписка — это просто очередь, которую задача
отдала отправителю при старте.

| Отправитель | Функция подписки |
|---|---|
| кнопки | `button_subscribe(queue)` |
| монтировка | `mount_link_subscribe(queue)` |
| сопряжение | `espnow_link_subscribe_state(queue)` |

Отправитель хранит до 4 очередей и при событии делает `xQueueSend` в каждую.
