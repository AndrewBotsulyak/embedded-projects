#include "lx200_commands.h"

#include <cstring>

// Записать команду в out: ':' + body + '#'. Возвращает длину или 0, если не помещается
static size_t build(const char *body, char *out, size_t size) {
    size_t body_len = strlen(body);
    size_t len = body_len + 2;   // ':' и '#'

    if (len + 1 > size) {        // + '\0'
        return 0;
    }

    out[0] = ':';
    memcpy(out + 1, body, body_len);
    out[len - 1] = '#';
    out[len] = '\0';

    return len;
}

// Команда из двух букв: prefix + letter. letter '?' — неизвестное значение
static size_t build_letter(char prefix, char letter, char *out, size_t size) {
    if (letter == '?') {
        return 0;
    }

    char body[3] = {prefix, letter, '\0'};
    return build(body, out, size);
}

size_t lx200_cmd_rate(lx200_rate_t rate, char *out, size_t size) {
    return build_letter('R', lx200_rate_to_char(rate), out, size);
}

size_t lx200_cmd_move(lx200_dir_t dir, char *out, size_t size) {
    return build_letter('M', lx200_dir_to_char(dir), out, size);
}

size_t lx200_cmd_stop_dir(lx200_dir_t dir, char *out, size_t size) {
    return build_letter('Q', lx200_dir_to_char(dir), out, size);
}

size_t lx200_cmd_stop_all(char *out, size_t size) {
    return build("Q", out, size);
}

size_t lx200_cmd_tracking_on(char *out, size_t size) {
    return build("Te", out, size);
}

size_t lx200_cmd_tracking_off(char *out, size_t size) {
    return build("Td", out, size);
}

size_t lx200_cmd_status(char *out, size_t size) {
    return build("GU", out, size);
}
