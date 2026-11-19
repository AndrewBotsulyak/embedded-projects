/*
    Проверки lx200_format на компьютере, без платы.

    Запуск (из папки components/lx200_format):
        c++ -std=c++17 -Wall -Wextra -Iinclude host_test/test_lx200_format.cpp lx200_format.cpp -o /tmp/test_lx200_format
        /tmp/test_lx200_format

    Ошибка → строка с FAIL и код выхода 1.
*/
#include <cstdio>
#include <cstring>

#include "lx200_format.h"

static int failures = 0;

#define CHECK(cond)                                                     \
    do {                                                                \
        if (!(cond)) {                                                  \
            printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);      \
            failures++;                                                 \
        }                                                               \
    } while (0)

// Разобрать RA и сравнить; expect_ok = false — строка должна быть отвергнута
static void check_ra(const char *s, bool expect_ok, int32_t expect = 0) {
    int32_t v = -1;
    bool ok = lx200_parse_ra(s, &v);
    if (ok != expect_ok || (ok && v != expect)) {
        printf("FAIL parse_ra(\"%s\"): ok=%d v=%d, ожидалось ok=%d v=%d\n",
               s, ok, (int)v, expect_ok, (int)expect);
        failures++;
    }
}

static void check_dec(const char *s, bool expect_ok, int32_t expect = 0) {
    int32_t v = -1;
    bool ok = lx200_parse_dec(s, &v);
    if (ok != expect_ok || (ok && v != expect)) {
        printf("FAIL parse_dec(\"%s\"): ok=%d v=%d, ожидалось ok=%d v=%d\n",
               s, ok, (int)v, expect_ok, (int)expect);
        failures++;
    }
}

static void check_fmt_ra(int32_t v, bool long_format, const char *expect) {
    char buf[16];
    size_t n = lx200_format_ra(v, long_format, buf, sizeof(buf));
    if (n == 0 || strcmp(buf, expect) != 0) {
        printf("FAIL format_ra(%d, %d) = \"%s\", ожидалось \"%s\"\n", (int)v, long_format, buf, expect);
        failures++;
    }
}

static void check_fmt_dec(int32_t v, bool long_format, const char *expect) {
    char buf[16];
    size_t n = lx200_format_dec(v, long_format, buf, sizeof(buf));
    if (n == 0 || strcmp(buf, expect) != 0) {
        printf("FAIL format_dec(%d, %d) = \"%s\", ожидалось \"%s\"\n", (int)v, long_format, buf, expect);
        failures++;
    }
}

int main() {
    // --- RA: разбор ---
    check_ra("05:35:17", true, 20117);
    check_ra("05:35.3",  true, 5 * 3600 + 35 * 60 + 18);
    check_ra("05:35",    true, 5 * 3600 + 35 * 60);
    check_ra(" 05:35:17", true, 20117);          // пробел после :Sr
    check_ra("00:00:00", true, 0);
    check_ra("23:59:59", true, 86399);
    check_ra("24:00:00", false);
    check_ra("05:60:00", false);
    check_ra("05:35:60", false);
    check_ra("05-35-17", false);
    check_ra("",         false);
    check_ra("05:35:17x", false);

    // --- DEC: разбор ---
    check_dec("+22*00:52", true, 79252);
    check_dec("-22*00:52", true, -79252);
    check_dec("22*00:52",  true, 79252);         // без знака
    check_dec("+22*00'52", true, 79252);         // Meade: секунды через '
    check_dec("+22:00:52", true, 79252);         // ':' вместо '*'
    check_dec("+22\xDF" "00:52", true, 79252);   // 0xDF — градус у Meade
    check_dec("+22*00",    true, 79200);         // короткий
    check_dec("-00*30",    true, -1800);         // −0°30′: знак у нуля градусов важен
    check_dec("+90*00:00", true, 324000);
    check_dec("+90*00:01", false);
    check_dec("+22*60",    false);
    check_dec("+22",       false);
    check_dec("+22*",      false);

    // --- RA: запись ---
    check_fmt_ra(20117, true,  "05:35:17");
    check_fmt_ra(20117, false, "05:35.3");
    check_fmt_ra(0,     true,  "00:00:00");
    check_fmt_ra(86399, true,  "23:59:59");
    check_fmt_ra(86398, false, "00:00.0");       // 23:59:58 округляется до 24:00.0 = 00:00.0
    check_fmt_ra(-1,    true,  "23:59:59");      // приведение к суткам
    check_fmt_ra(86400, true,  "00:00:00");

    // --- DEC: запись ---
    check_fmt_dec(79252,   true,  "+22*00:52");
    check_fmt_dec(-79252,  true,  "-22*00:52");
    check_fmt_dec(79252,   false, "+22*01");     // 52″ округляются вверх до минуты
    check_fmt_dec(-1800,   true,  "-00*30:00");
    check_fmt_dec(400000,  true,  "+90*00:00");  // ограничение ±90°

    // --- Туда и обратно: запись → разбор даёт то же число ---
    for (int32_t v = 0; v < LX200_RA_MAX_SEC; v += 37) {
        char buf[16];
        int32_t back;
        lx200_format_ra(v, true, buf, sizeof(buf));
        CHECK(lx200_parse_ra(buf, &back) && back == v);
    }
    for (int32_t v = -LX200_DEC_MAX_ARCSEC; v <= LX200_DEC_MAX_ARCSEC; v += 41) {
        char buf[16];
        int32_t back;
        lx200_format_dec(v, true, buf, sizeof(buf));
        CHECK(lx200_parse_dec(buf, &back) && back == v);
    }

    // --- Маленький буфер: 0, без выхода за границу ---
    char small[4];
    CHECK(lx200_format_ra(20117, true, small, sizeof(small)) == 0);

    // --- Буквы направлений и скоростей ---
    const char *dirs = "nsew";
    for (const char *c = dirs; *c; c++) {
        lx200_dir_t d;
        CHECK(lx200_dir_from_char(*c, &d) && lx200_dir_to_char(d) == *c);
    }
    const char *rates = "GCMS";
    for (const char *c = rates; *c; c++) {
        lx200_rate_t r;
        CHECK(lx200_rate_from_char(*c, &r) && lx200_rate_to_char(r) == *c);
    }
    lx200_dir_t d;
    lx200_rate_t r;
    CHECK(!lx200_dir_from_char('x', &d));
    CHECK(!lx200_rate_from_char('x', &r));

    // --- Состояние :GU# ---
    {
        lx200_status_t st = {};
        char buf[16];

        // После включения: стоит, нет GoTo, SLEW, без ошибок
        st = {false, false, LX200_RATE_SLEW, LX200_STATUS_ERR_NONE};
        CHECK(lx200_format_status(&st, buf, sizeof(buf)) > 0 && strcmp(buf, "nNpEo280") == 0);
        // Ведёт, GUIDE
        st = {true, false, LX200_RATE_GUIDE, LX200_STATUS_ERR_NONE};
        CHECK(lx200_format_status(&st, buf, sizeof(buf)) > 0 && strcmp(buf, "NpEo220") == 0);
        // GoTo (не ведёт), CENTER
        st = {false, true, LX200_RATE_CENTER, LX200_STATUS_ERR_NONE};
        CHECK(lx200_format_status(&st, buf, sizeof(buf)) > 0 && strcmp(buf, "npEo250") == 0);
        // Авария, FIND
        st = {false, false, LX200_RATE_FIND, LX200_STATUS_ERR_MOTOR_FAULT};
        CHECK(lx200_format_status(&st, buf, sizeof(buf)) > 0 && strcmp(buf, "nNpEo261") == 0);
        // Маленький буфер
        char tiny[4];
        CHECK(lx200_format_status(&st, tiny, sizeof(tiny)) == 0);

        // Туда и обратно — все сочетания
        const lx200_rate_t all_rates[] = {LX200_RATE_GUIDE, LX200_RATE_CENTER, LX200_RATE_FIND, LX200_RATE_SLEW};
        for (int t = 0; t < 2; t++)
            for (int g = 0; g < 2; g++)
                for (lx200_rate_t rate : all_rates)
                    for (uint8_t e = 0; e < 2; e++) {
                        lx200_status_t a = {t == 1, g == 1, rate, e};
                        lx200_status_t b = {};
                        CHECK(lx200_format_status(&a, buf, sizeof(buf)) > 0);
                        CHECK(lx200_parse_status(buf, &b));
                        CHECK(a.tracking == b.tracking && a.goto_active == b.goto_active
                              && a.rate == b.rate && a.error == b.error);
                    }

        // С '#' на конце — как приходит по радио
        CHECK(lx200_parse_status("NpEo220#", &st) && st.tracking && !st.goto_active
              && st.rate == LX200_RATE_GUIDE && st.error == 0);

        // Настоящие ответы OnStepX: лишние буквы не мешают
        CHECK(lx200_parse_status("nNpEW180#", &st) && !st.tracking && !st.goto_active
              && st.rate == LX200_RATE_SLEW && st.error == 0);
        CHECK(lx200_parse_status("nNpET1:0", &st) && st.rate == LX200_RATE_SLEW);   // ':' — своя скорость
        CHECK(lx200_parse_status("NpHzaEW257", &st) && st.tracking && st.rate == LX200_RATE_CENTER
              && st.error == 7);

        // Не ответ :GU#
        CHECK(!lx200_parse_status("", &st));
        CHECK(!lx200_parse_status("1", &st));          // ответ :Te#
        CHECK(!lx200_parse_status("05:35:17#", &st));   // ответ :GR#
        CHECK(!lx200_parse_status("N/A#", &st));        // ответ :CM#
    }

    if (failures == 0) {
        printf("OK: все проверки lx200_format прошли\n");
        return 0;
    }
    printf("Ошибок: %d\n", failures);
    return 1;
}
