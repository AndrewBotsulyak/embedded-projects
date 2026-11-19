#include "tmc-power.h"

#include <stdio.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "tmc-regs.h"
#include "tmc-uart.h"

#define POWER_POLL_STEP_MS 100

bool tmc_is_alive(tmc_axis_t axis) {
    // IOIN читается всегда, когда чип жив. Сам факт корректного ответа
    // со сошедшейся CRC и означает, что драйвер запитан и слышит нас.
    // NULL вместо адреса переменной: само значение регистра нам не нужно,
    // важен только ответ «да/нет».
    return tmc_read_register(axis, REG_IOIN, NULL);
}

bool tmc_wait_for_power(tmc_axis_t axis, uint32_t timeout_ms) {
    // Сколько уже прождали, в миллисекундах.
    uint32_t waited = 0;

    // Крутимся, пока драйвер молчит.
    while (!tmc_is_alive(axis)) {
        // Если таймаут задан (не ноль) и время вышло — сдаёмся.
        // Ноль означает «ждать бесконечно», поэтому тогда эта проверка пропускается.
        if (timeout_ms != 0 && waited >= timeout_ms) {
            return false;
        }
        // Засыпаем на 100 мс, отдавая процессор другим задачам,
        // и прибавляем это время к счётчику.
        vTaskDelay(pdMS_TO_TICKS(POWER_POLL_STEP_MS));
        waited += POWER_POLL_STEP_MS;
    }
    // Вышли из цикла — значит драйвер ответил.
    return true;
}

bool tmc_took_reset(tmc_axis_t axis) {
    // Читаем регистр состояния GSTAT.
    uint32_t gstat = 0;
    if (!tmc_read_register(axis, REG_GSTAT, &gstat)) {
        return false;  // не отвечает — питания нет, разбираться будет вызывающий
    }

    // «& GSTAT_RESET» оставляет только бит сброса. Ноль — сброса не было.
    if ((gstat & GSTAT_RESET) == 0) {
        return false;
    }

    // Биты GSTAT сбрасываются записью единицы в тот же бит.
    // Гасим флаг, чтобы следующий вызов вернул true только при новом сбросе.
    tmc_write_register(axis, REG_GSTAT, GSTAT_RESET);
    return true;
}

bool tmc_has_fault(tmc_axis_t axis, uint32_t *gstat_out) {
    // Читаем регистр состояния. Нет ответа — об ошибках судить не можем.
    uint32_t gstat = 0;
    if (!tmc_read_register(axis, REG_GSTAT, &gstat)) {
        return false;
    }
    // Если вызывающий попросил сырое значение регистра — отдаём его.
    if (gstat_out != NULL) {
        *gstat_out = gstat;
    }
    // Проверяем два бита сразу: ошибка драйвера ИЛИ просадка питания.
    // Хоть один взведён — возвращаем true.
    return (gstat & (GSTAT_DRV_ERR | GSTAT_UV_CP)) != 0;
}

bool tmc_driver_ready(tmc_axis_t axis) {
    // Только проверка, ничего не пишет. Одно чтение GSTAT отвечает сразу
    // на оба вопроса: ответил — значит запитан, флаг reset погашен — значит
    // с момента нашей настройки чип не перезапускался.
    uint32_t gstat = 0;
    if (!tmc_read_register(axis, REG_GSTAT, &gstat)) {
        return false;  // не отвечает — питания нет
    }
    // Флаг взведён — регистры вернулись к заводским (микрошаг 1/8 с пинов,
    // ток с подстроечника VREF). Крутить в таком состоянии нельзя.
    return (gstat & GSTAT_RESET) == 0;
}

bool tmc_all_alive(void) {
    // Перебираем все подключённые оси: a = 0 (RA), потом a = 1 (DEC), если
    // она есть. TMC_AXES_PRESENT — сколько осей реально разведено.
    for (int a = 0; a < TMC_AXES_PRESENT; a++) {
        // Спрашиваем очередной драйвер, жив ли он. «(tmc_axis_t)a» переводит
        // простое число 0 или 1 в тип «номер оси», который ждёт функция.
        if (!tmc_is_alive((tmc_axis_t)a)) {
            // Хоть один не ответил — сразу возвращаем «не все живы»,
            // остальные можно не проверять: ответ уже известен.
            return false;
        }
    }
    // Цикл прошёл до конца и ни разу не вышел досрочно — ответили все.
    return true;
}

bool tmc_wait_for_all(uint32_t timeout_ms) {
    // Таймаут общий, а не на каждую ось: питание у драйверов одно, и если
    // первый ответил, остальные либо ответят сразу, либо не ответят вообще
    // (неверный адрес на MS1/MS2) — ждать их по полному кругу бессмысленно.
    uint32_t waited = 0;

    // Крутимся, пока хоть одна ось молчит.
    while (!tmc_all_alive()) {
        // Таймаут задан и вышел — сдаёмся. Ноль означает «ждать бесконечно».
        if (timeout_ms != 0 && waited >= timeout_ms) {
            return false;
        }
        // Спим 100 мс и прибавляем их к счётчику ожидания.
        vTaskDelay(pdMS_TO_TICKS(POWER_POLL_STEP_MS));
        waited += POWER_POLL_STEP_MS;
    }
    // Ответили все.
    return true;
}

void tmc_configure_all(void) {
    // По очереди настраиваем каждую подключённую ось.
    for (int a = 0; a < TMC_AXES_PRESENT; a++) {
        // Переводим счётчик цикла в номер оси.
        tmc_axis_t axis = (tmc_axis_t)a;
        tmc_took_reset(axis);  // погасить флаг первого включения, дальше он значимый
        // Отправляем конфигурацию: микрошаг, токи, автотюнинг (~300 мс).
        tmc_configure(axis);
        // Печатаем в лог, что драйвер отвечает и что это действительно TMC2209.
        tmc_check_communication(axis);
    }
}

void tmc_print_status_all(void) {
    for (int a = 0; a < TMC_AXES_PRESENT; a++) {
        uint32_t gstat = 0;
        // Не ответил — это и правда «нет питания» (или обрыв линии UART).
        if (!tmc_read_register((tmc_axis_t)a, REG_GSTAT, &gstat)) {
            printf("TMC2209 ось %d: нет ответа по UART\n", a + 1);
            continue;
        }
        // Ответил — значит питание есть, а «не готов» из-за флагов GSTAT.
        // reset=1 при живой связи — чип перезапустился, не теряя UART:
        // чаще всего просадка VM (например, блок упёрся в ограничение тока).
        printf("TMC2209 ось %d: отвечает, GSTAT=0x%lX (reset=%d drv_err=%d uv_cp=%d)\n",
               a + 1, (unsigned long)gstat,
               (gstat & GSTAT_RESET)   ? 1 : 0,
               (gstat & GSTAT_DRV_ERR) ? 1 : 0,
               (gstat & GSTAT_UV_CP)   ? 1 : 0);
    }
}

bool tmc_all_ready(void) {
    // Чистая проверка, как tmc_all_alive(): настройкой занимается
    // tmc_configure_all(), поэтому на первой неготовой оси можно выходить.
    for (int a = 0; a < TMC_AXES_PRESENT; a++) {
        if (!tmc_driver_ready((tmc_axis_t)a)) {
            return false;
        }
    }
    return true;
}
