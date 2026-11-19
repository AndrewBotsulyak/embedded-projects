// ============================================================================
//  lx200_format.cpp — перевод «строка LX200 ↔ число»
// ============================================================================
//
//  Телескоп и программы общаются строками: "05:35:17", "+22*00:52", "nNpEo280".
//  Внутри прошивки удобнее хранить числа. Этот файл переводит одно в другое:
//
//    parse_*   — строку превращает в число   ("05:35:17" → 20117)
//    format_*  — число превращает в строку   (20117 → "05:35:17")
//    *_from_char / *_to_char — букву превращает в enum и обратно
//
//  Команд, UART и моторов здесь нет — только перевод.
// ============================================================================

#include "lx200_format.h"

#include <cstdio>

// ----------------------------------------------------------------------------
//  Помощники для разбора строк
// ----------------------------------------------------------------------------

// Пропускает пробелы. Возвращает указатель на первый символ после них.
static const char *skip_spaces(const char *p) {
    while (*p == ' ') p++;
    return p;
}

// Читает 1–2 цифры как число и записывает его в value.
// Возвращает указатель на символ после цифр. Если цифры нет — nullptr.
//   "05:" → value = 5, указатель на ':'
static const char *read_2digits(const char *p, int *value) {
    if (*p < '0' || *p > '9') return nullptr;
    int v = *p++ - '0';
    if (*p >= '0' && *p <= '9') v = v * 10 + (*p++ - '0');
    *value = v;
    return p;
}

// Проверяет, что строка закончилась (дальше только пробелы).
static bool is_end(const char *p) {
    return *skip_spaces(p) == '\0';
}

// Проверяет, что символ — разделитель градусов в DEC: '*', ':' или 0xDF
// (0xDF — значок градуса у старых пультов Meade).
static bool is_deg_separator(unsigned char c) {
    return c == '*' || c == ':' || c == 0xDF;
}

// ----------------------------------------------------------------------------
//  Строка → число (координаты)
// ----------------------------------------------------------------------------

/*
    Строку RA превращает в число секунд и записывает в ra_sec.
      "05:35:17" → 20117
      "05:35.3"  → 20118   (.3 — десятые доли минуты, 1 доля = 6 секунд)
      "05:35"    → 20100
    Возвращает false, если строка кривая или часы/минуты/секунды вне диапазона.
*/
bool lx200_parse_ra(const char *s, int32_t *ra_sec) {
    const char *p = skip_spaces(s);
    int hh, mm;

    if (!(p = read_2digits(p, &hh)) || *p++ != ':') return false;
    if (!(p = read_2digits(p, &mm))) return false;

    int sec = 0;
    if (*p == ':') {                      // длинный: HH:MM:SS
        int ss;
        if (!(p = read_2digits(p + 1, &ss)) || ss >= 60) return false;
        sec = ss;
    } else if (*p == '.') {               // короткий: HH:MM.T
        p++;
        if (*p < '0' || *p > '9') return false;
        sec = (*p++ - '0') * 6;           // десятая доля минуты = 6 секунд
    }                                     // иначе HH:MM — без секунд

    if (!is_end(p) || hh >= 24 || mm >= 60) return false;

    *ra_sec = hh * 3600 + mm * 60 + sec;
    return true;
}

/*
    Строку DEC превращает в число угловых секунд и записывает в dec_arcsec.
      "+22*00:52" → 79252
      "-05*30'00" → -19800
      "+22*01"    → 79260
    Возвращает false, если строка кривая или DEC больше 90°.
*/
bool lx200_parse_dec(const char *s, int32_t *dec_arcsec) {
    const char *p = skip_spaces(s);

    int sign = 1;
    if (*p == '+') {
        p++;
    } else if (*p == '-') {
        sign = -1;
        p++;
    }

    int dd, mm, ss = 0;
    if (!(p = read_2digits(p, &dd)) || !is_deg_separator((unsigned char)*p++)) return false;
    if (!(p = read_2digits(p, &mm))) return false;

    if (*p == ':' || *p == '\'') {        // длинный: секунды после ':' (OnStep) или '\'' (Meade)
        if (!(p = read_2digits(p + 1, &ss))) return false;
    }

    if (!is_end(p) || mm >= 60 || ss >= 60) return false;

    int32_t total = dd * 3600 + mm * 60 + ss;
    if (total > LX200_DEC_MAX_ARCSEC) return false;

    *dec_arcsec = sign * total;
    return true;
}

// ----------------------------------------------------------------------------
//  Число → строка (координаты)
// ----------------------------------------------------------------------------

// Проверяет, поместилась ли строка от snprintf в буфер.
// Возвращает её длину, а если не поместилась — 0.
static size_t written(int n, size_t size) {
    return (n > 0 && (size_t)n < size) ? (size_t)n : 0;
}

/*
    Число секунд RA превращает в строку и записывает в out.
      long_format = true  → 20117 → "05:35:17"
      long_format = false → 20117 → "05:35.3"
    Возвращает длину строки или 0, если out слишком маленький.
*/
size_t lx200_format_ra(int32_t ra_sec, bool long_format, char *out, size_t size) {
    // Привести к одним суткам: RA 24:00:00 = 00:00:00
    ra_sec %= LX200_RA_MAX_SEC;
    if (ra_sec < 0) ra_sec += LX200_RA_MAX_SEC;

    if (long_format) {
        return written(snprintf(out, size, "%02d:%02d:%02d",
                                (int)(ra_sec / 3600), (int)(ra_sec / 60 % 60), (int)(ra_sec % 60)),
                       size);
    }

    // Короткий: десятые доли минуты (6 с), с округлением. 23:59:57 → 24:00.0 → 00:00.0
    int32_t tenths = (ra_sec + 3) / 6 % (24 * 60 * 10);
    return written(snprintf(out, size, "%02d:%02d.%d",
                            (int)(tenths / 600), (int)(tenths / 10 % 60), (int)(tenths % 10)),
                   size);
}

/*
    Число угловых секунд DEC превращает в строку и записывает в out.
      long_format = true  → 79252 → "+22*00:52"
      long_format = false → 79252 → "+22*01"
    Больше 90° не бывает: такое число обрезается до ±90°.
    Возвращает длину строки или 0, если out слишком маленький.
*/
size_t lx200_format_dec(int32_t dec_arcsec, bool long_format, char *out, size_t size) {
    if (dec_arcsec >  LX200_DEC_MAX_ARCSEC) dec_arcsec =  LX200_DEC_MAX_ARCSEC;
    if (dec_arcsec < -LX200_DEC_MAX_ARCSEC) dec_arcsec = -LX200_DEC_MAX_ARCSEC;

    char sign = dec_arcsec < 0 ? '-' : '+';
    int32_t a = dec_arcsec < 0 ? -dec_arcsec : dec_arcsec;

    if (long_format) {
        return written(snprintf(out, size, "%c%02d*%02d:%02d",
                                sign, (int)(a / 3600), (int)(a / 60 % 60), (int)(a % 60)),
                       size);
    }

    // Короткий: до минут, с округлением
    int32_t minutes = (a + 30) / 60;
    return written(snprintf(out, size, "%c%02d*%02d", sign, (int)(minutes / 60), (int)(minutes % 60)),
                   size);
}

// ----------------------------------------------------------------------------
//  Буква ↔ enum (направление и скорость)
// ----------------------------------------------------------------------------

// Букву направления ('n' 's' 'e' 'w') превращает в enum и записывает в dir.
// Возвращает false, если это не буква направления.
bool lx200_dir_from_char(char c, lx200_dir_t *dir) {
    switch (c) {
        case 'n': *dir = LX200_DIR_N; return true;
        case 's': *dir = LX200_DIR_S; return true;
        case 'e': *dir = LX200_DIR_E; return true;
        case 'w': *dir = LX200_DIR_W; return true;
        default:  return false;
    }
}

// Enum направления превращает в букву ('n' 's' 'e' 'w').
char lx200_dir_to_char(lx200_dir_t dir) {
    switch (dir) {
        case LX200_DIR_N: return 'n';
        case LX200_DIR_S: return 's';
        case LX200_DIR_E: return 'e';
        case LX200_DIR_W: return 'w';
    }
    return '?';
}

// Букву скорости ('G' 'C' 'M' 'S') превращает в enum и записывает в rate.
// Возвращает false, если это не буква скорости.
bool lx200_rate_from_char(char c, lx200_rate_t *rate) {
    switch (c) {
        case 'G': *rate = LX200_RATE_GUIDE;  return true;
        case 'C': *rate = LX200_RATE_CENTER; return true;
        case 'M': *rate = LX200_RATE_FIND;   return true;
        case 'S': *rate = LX200_RATE_SLEW;   return true;
        default:  return false;
    }
}

// Enum скорости превращает в букву ('G' 'C' 'M' 'S').
char lx200_rate_to_char(lx200_rate_t rate) {
    switch (rate) {
        case LX200_RATE_GUIDE:  return 'G';
        case LX200_RATE_CENTER: return 'C';
        case LX200_RATE_FIND:   return 'M';
        case LX200_RATE_SLEW:   return 'S';
    }
    return '?';
}

// ----------------------------------------------------------------------------
//  Состояние монтировки (ответ на :GU#)
// ----------------------------------------------------------------------------

// Нашу скорость превращает в цифру скорости OnStepX: G→'2', C→'5', M→'6', S→'8'.
static char rate_to_onstep_digit(lx200_rate_t rate) {
    switch (rate) {
        case LX200_RATE_GUIDE:  return '2';
        case LX200_RATE_CENTER: return '5';
        case LX200_RATE_FIND:   return '6';
        case LX200_RATE_SLEW:   return '8';
    }
    return '2';
}

// Цифру скорости OnStepX превращает в нашу скорость.
// У OnStepX скоростей больше, поэтому берётся ближайшая: 0–2→G, 3–5→C, 6–7→M, 8+→S.
static lx200_rate_t onstep_digit_to_rate(char c) {
    int n = c - '0';
    if (n <= 2) return LX200_RATE_GUIDE;    // ¼×, ½×, 1×
    if (n <= 5) return LX200_RATE_CENTER;   // 2×, 4×, 8×
    if (n <= 7) return LX200_RATE_FIND;     // 20×, 48×
    return LX200_RATE_SLEW;                 // ½ макс., макс., своя
}

// Проверяет, что символ — цифра-код OnStepX: '0'..'9', а дальше ':' ';' '<' '=' '>' '?' (10..15).
static bool is_code_char(char c) {
    return c >= '0' && c <= '?';
}

/*
    Состояние монтировки (структуру st) превращает в строку и записывает в out.
    Эту строку монтировка отправляет в ответ на :GU#.
      ведёт, нет GoTo, скорость S, ошибок нет → "NpEo280"
    Возвращает длину строки или 0, если out слишком маленький.
*/
size_t lx200_format_status(const lx200_status_t *st, char *out, size_t size) {
    char buf[16];
    size_t i = 0;
    if (!st->tracking)    buf[i++] = 'n';
    if (!st->goto_active) buf[i++] = 'N';
    buf[i++] = 'p';                                  // не запаркована
    buf[i++] = 'E';                                  // немецкая экваториальная
    buf[i++] = 'o';                                  // сторона трубы неизвестна
    buf[i++] = '2';                                  // импульсное гидирование 1×
    buf[i++] = rate_to_onstep_digit(st->rate);
    buf[i++] = (char)('0' + (st->error > 15 ? 15 : st->error));
    buf[i] = '\0';

    if (i + 1 > size) return 0;
    for (size_t k = 0; k <= i; k++) out[k] = buf[k];
    return i;
}

/*
    Строку ответа на :GU# превращает в состояние монтировки и записывает в st.
    Так пульт узнаёт, что сейчас делает монтировка.
      "NpEo280#" → ведёт, нет GoTo, скорость S, ошибок нет
    Возвращает false, если строка не похожа на ответ :GU#.
*/
bool lx200_parse_status(const char *s, lx200_status_t *st) {
    // Длина без '#' в конце
    size_t len = 0;
    while (s[len] != '\0') len++;
    if (len > 0 && s[len - 1] == '#') len--;

    // В конце три цифры-кода: гидирование, скорость стрелок, ошибка
    if (len < 3) return false;
    const char *codes = s + len - 3;
    for (int k = 0; k < 3; k++) {
        if (!is_code_char(codes[k])) return false;
    }

    // Буквы-флаги — всё, что перед цифрами. Цифр и ':' среди них не бывает:
    // так ответ :GU# не спутать с координатами ("05:35:17#")
    bool not_tracking = false;
    bool no_goto = false;
    for (const char *p = s; p < codes; p++) {
        if ((*p >= '0' && *p <= '9') || *p == ':') return false;
        if (*p == 'n') not_tracking = true;
        if (*p == 'N') no_goto = true;
    }

    st->tracking    = !not_tracking;
    st->goto_active = !no_goto;
    st->rate        = onstep_digit_to_rate(codes[1]);
    st->error       = (uint8_t)(codes[2] - '0');
    return true;
}
