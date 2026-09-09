#ifndef TMC_UART_H
#define TMC_UART_H

#include <stdbool.h>
#include <stdint.h>

// Транспорт до TMC2209: однопроводный UART, датаграммы, конфигурация регистров.
// Проверки «жив ли драйвер и запитан ли он» вынесены в tmc-power.h.

// Заголовок подключается и из C, и из C++ (main.cpp). Без extern "C"
// компилятор C++ заманглит имена и линковщик их не найдёт.
#ifdef __cplusplus
extern "C" {
#endif

// Настраивает UART на однопроводную линию PDN_UART драйвера.
// Вызывать один раз до всех остальных функций.
void tmc_uart_init(void);

// CRC8 по алгоритму из даташита TMC2209 (полином 0x07, отражённый ввод).
uint8_t tmc_crc8(uint8_t *data, uint8_t len);

// Собирает 8-байтную датаграмму записи и отправляет её в драйвер.
// reg — адрес регистра без бита записи, он выставляется внутри.
void tmc_write_register(uint8_t reg, uint32_t value);

// Читает регистр. Возвращает false, если ответа нет или он битый:
// драйвер обесточен, не подключён, либо помеха на линии.
// value может быть NULL, если нужен только факт ответа.
bool tmc_read_register(uint8_t reg, uint32_t *value);

// Конфигурация: микрошаг 1/16, интерполяция, токи IRUN/IHOLD.
void tmc_configure(void);

// Печатает IFCNT и версию чипа — для проверки связи.
void tmc_check_communication(void);

#ifdef __cplusplus
}
#endif

#endif /* TMC_UART_H */
