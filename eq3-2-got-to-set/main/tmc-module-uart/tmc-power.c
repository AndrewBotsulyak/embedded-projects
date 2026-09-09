#include "tmc-power.h"

#include <stdio.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "tmc-regs.h"
#include "tmc-uart.h"

#define POWER_POLL_STEP_MS 100

bool tmc_is_alive(void) {
    // IOIN читается всегда, когда чип жив. Сам факт корректного ответа
    // со сошедшейся CRC и означает, что драйвер запитан и слышит нас.
    return tmc_read_register(REG_IOIN, NULL);
}

bool tmc_wait_for_power(uint32_t timeout_ms) {
    uint32_t waited = 0;

    while (!tmc_is_alive()) {
        if (timeout_ms != 0 && waited >= timeout_ms) {
            return false;
        }
        vTaskDelay(pdMS_TO_TICKS(POWER_POLL_STEP_MS));
        waited += POWER_POLL_STEP_MS;
    }
    return true;
}

bool tmc_took_reset(void) {
    uint32_t gstat = 0;
    if (!tmc_read_register(REG_GSTAT, &gstat)) {
        return false;  // не отвечает — питания нет, разбираться будет вызывающий
    }

    if ((gstat & GSTAT_RESET) == 0) {
        return false;
    }

    // Биты GSTAT сбрасываются записью единицы в тот же бит.
    tmc_write_register(REG_GSTAT, GSTAT_RESET);
    return true;
}

bool tmc_has_fault(uint32_t *gstat_out) {
    uint32_t gstat = 0;
    if (!tmc_read_register(REG_GSTAT, &gstat)) {
        return false;
    }
    if (gstat_out != NULL) {
        *gstat_out = gstat;
    }
    return (gstat & (GSTAT_DRV_ERR | GSTAT_UV_CP)) != 0;
}

bool tmc_driver_ready(void) {
    if (!tmc_is_alive()) {
        return false;
    }
    if (tmc_took_reset()) {
        printf("TMC2209 перезапустился — настраиваем заново\n");
        tmc_configure();
    }
    return true;
}
