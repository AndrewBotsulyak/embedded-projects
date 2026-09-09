#include "tmc-uart.h"

#include <stdbool.h>
#include <stdio.h>

#include "driver/uart.h"

#include "tmc-regs.h"

#define TMC_UART_NUM  UART_NUM_1
// У TMC2209 один вывод PDN_UART — однопроводный полудуплекс, обе стороны
// говорят по одной линии. Разводка обязана быть несимметричной:
//   TX --[~1 кОм]--> PDN_UART   (резистор ослабляет наш выход)
//   RX -------------> PDN_UART   (напрямую, ПОСЛЕ резистора)
// RX должен мерить напряжение на выводе драйвера. Если посадить его до
// резистора (в т.ч. свести TX и RX на один GPIO), он будет читать наш
// собственный выход, удерживаемый в единице, и ответ драйвера не увидит.
#define TMC_UART_TX_PIN  17
#define TMC_UART_RX_PIN  18

#define TMC_DRIVER_ADDR  0x00  // адрес драйвера на линии (один драйвер — 0)
#define TMC_READ_TIMEOUT_MS 20

void tmc_uart_init(void) {
    uart_config_t cfg = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity    = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
    };
    uart_param_config(TMC_UART_NUM, &cfg);
    uart_set_pin(TMC_UART_NUM, TMC_UART_TX_PIN, TMC_UART_RX_PIN,
                 UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
    uart_driver_install(TMC_UART_NUM, 256, 0, 0, NULL, 0);
}

/*
    Контрольная сумма CRC8
    TMC2209 ожидает CRC, посчитанную по конкретному, зафиксированному в его документации алгоритму
*/
uint8_t tmc_crc8(uint8_t *data, uint8_t len) {
    uint8_t crc = 0;
    for (int i = 0; i < len; i++) {
        uint8_t b = data[i];
        for (int j = 0; j < 8; j++) {
            if ((crc >> 7) ^ (b & 0x01)) {
                crc = (crc << 1) ^ 0x07;
            } else {
                crc = (crc << 1);
            }
            b >>= 1;
        }
    }
    return crc;
}

/*
    Запись регистра — сборка и отправка пакета.
    reg — номер регистра, бит записи выставляется внутри.
*/
void tmc_write_register(uint8_t reg, uint32_t value) {
    uint8_t packet[8];
    packet[0] = TMC_SYNC_BYTE;
    packet[1] = TMC_DRIVER_ADDR;
    packet[2] = reg | 0x80;        // номер регистра, бит записи установлен
    packet[3] = (value >> 24) & 0xFF;
    packet[4] = (value >> 16) & 0xFF;
    packet[5] = (value >> 8)  & 0xFF;
    packet[6] = value & 0xFF;
    packet[7] = tmc_crc8(packet, 7);

    uart_write_bytes(TMC_UART_NUM, (const char *)packet, 8);
}

bool tmc_read_register(uint8_t reg, uint32_t *value) {
    uint8_t req[4];
    req[0] = TMC_SYNC_BYTE;
    req[1] = TMC_DRIVER_ADDR;
    req[2] = reg & 0x7F;   // бит записи НЕ установлен — это чтение
    req[3] = tmc_crc8(req, 3);

    // перед отправкой очищаем всё, что могло случайно накопиться в приёмном буфере
    uart_flush_input(TMC_UART_NUM);

    uart_write_bytes(TMC_UART_NUM, (const char *)req, 4);

    // Линия одна, поэтому приёмник слышит собственную передачу: сначала придут
    // 4 байта эха запроса и только за ними 8 байт ответа драйвера.
    // Ответная датаграмма: 0x05, 0xFF (адрес мастера), reg, 4 байта данных, CRC.
    uint8_t buf[TMC_ECHO_LEN + TMC_REPLY_LEN] = {0};
    int len = uart_read_bytes(TMC_UART_NUM, buf, sizeof(buf),
                              pdMS_TO_TICKS(TMC_READ_TIMEOUT_MS));
    if (len < (int)sizeof(buf)) {
        return false;  // молчит — скорее всего обесточен
    }

    const uint8_t *r = buf + TMC_ECHO_LEN;  // пропускаем эхо собственного запроса

    // Проверяем, что это действительно ответ драйвера, а не мусор на линии.
    // Без CRC невозможно отличить «нет питания» от «наводка на проводе».
    if (r[0] != TMC_SYNC_BYTE || r[1] != TMC_MASTER_ADDR ||
        r[7] != tmc_crc8((uint8_t *)r, 7)) {
        return false;
    }

    if (value != NULL) {
        *value = ((uint32_t)r[3] << 24) | ((uint32_t)r[4] << 16) |
                 ((uint32_t)r[5] << 8)  | (uint32_t)r[6];
    }
    return true;
}

void tmc_configure(void) {
    // GCONF — обязательно ПЕРВЫМ, иначе всё остальное не имеет смысла:
    //   pdn_disable      — снять с PDN_UART функцию снижения тока в покое,
    //                      даташит требует этого при работе по UART;
    //   mstep_reg_select — брать микрошаг из MRES в CHOPCONF. По умолчанию 0,
    //                      и тогда MRES игнорируется, а разрешение задают пины
    //                      MS1/MS2 (у TMC2209 сочетание 00 означает 1/8).
    tmc_write_register(REG_GCONF,
                       GCONF_DEFAULT | GCONF_PDN_DISABLE | GCONF_MSTEP_REG_SELECT);

    // Частичной записи регистра не существует, пишутся все 32 бита сразу.
    // Поэтому стартуем от заводского значения и меняем только поле MRES,
    // иначе запись обнулит настройки чоппера и бит интерполяции.
    uint32_t chopconf = CHOPCONF_DEFAULT;
    chopconf &= ~CHOPCONF_MRES_MASK;
    chopconf |= (MRES_16 << CHOPCONF_MRES_SHIFT);   // микрошаг 1/16
    tmc_write_register(REG_CHOPCONF, chopconf);

    // IHOLD_IRUN: биты 0-4 = IHOLD, биты 8-12 = IRUN (шкала 0-31, не мА напрямую)
    uint32_t ihold_irun = (16UL << 8) | 8UL; // IRUN=16, IHOLD=8 — стартовые значения
    tmc_write_register(REG_IHOLD_IRUN, ihold_irun);
}

void tmc_check_communication(void) {
    uint32_t ifcnt = 0;
    uint32_t ioin  = 0;

    if (!tmc_read_register(REG_IFCNT, &ifcnt)) {
        printf("TMC2209: нет ответа (силовое питание?)\n");
        return;
    }
    tmc_read_register(REG_IOIN, &ioin);

    printf("TMC2209: IFCNT=%lu, версия чипа 0x%02lX (ожидается 0x%02X)\n",
           (unsigned long)ifcnt,
           (unsigned long)((ioin >> IOIN_VERSION_SHIFT) & 0xFF),
           TMC2209_VERSION);
}
