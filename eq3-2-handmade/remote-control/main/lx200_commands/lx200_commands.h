#ifndef LX200_COMMANDS_H
#define LX200_COMMANDS_H

#include <cstddef>

#include "lx200_format.h"

// Сборка команд LX200, которые пульт отправляет монтировке.
// Отправка будет отдельно (ESP-NOW). Описание команд: info/menu.md
//
// Направление (lx200_dir_t) и скорость стрелок (lx200_rate_t) — из общего
// компонента lx200_format: буквы команд описаны там один раз для пульта и монтировки.
//
// Все функции пишут команду в out вместе с ':' и '#' (например ":Me#")
// и возвращают её длину. 0 — буфер мал или неизвестное значение аргумента.

#define LX200_CMD_BUF_SIZE 8   // хватает на любую команду ниже вместе с '\0'

// Только команды, которые понимает монтировка (её info/commands.md).
// :TQ# :TL# :TS# (скорость ведения) — TODO, когда их добавят в монтировку

size_t lx200_cmd_rate(lx200_rate_t rate, char *out, size_t size);               // :RG# :RC# :RM# :RS#
size_t lx200_cmd_move(lx200_dir_t dir, char *out, size_t size);                 // :Mn# :Ms# :Me# :Mw#
size_t lx200_cmd_stop_dir(lx200_dir_t dir, char *out, size_t size);             // :Qn# :Qs# :Qe# :Qw#
size_t lx200_cmd_stop_all(char *out, size_t size);                              // :Q#
size_t lx200_cmd_tracking_on(char *out, size_t size);                           // :Te#
size_t lx200_cmd_tracking_off(char *out, size_t size);                          // :Td#
size_t lx200_cmd_status(char *out, size_t size);                                // :GU# — ответ разбирает lx200_parse_status

#endif // LX200_COMMANDS_H
