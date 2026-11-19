#ifndef TMC_ERROR_H
#define TMC_ERROR_H

#include "axis-config.h"

enum tmc_fault_t { 
    FAULT_NONE,
    FAULT_OVERHEAT,
    FAULT_SHORT,
    FAULT_UNDERVOLTAGE,
    FAULT_NO_RESPONSE,
    FAULT_RESET,          // драйвер перезагрузился и ждёт успешной перенастройки
};


// Включить проверку оси a сторожем. Вызывать ДО запуска задачи и только для осей,
// драйвер которых успешно настроен: не подключённую ось сторож считал бы аварией
// и останавливал бы ВСЕ оси.
void tmc_watchdog_watch(axis_t a);

// Задача-сторож: каждые 100 мс проверяет драйверы и обрабатывает аварии.
// Запуск: xTaskCreate(tmc_watchdog_task, "tmc_watchdog", 4096, nullptr, 10, nullptr);
void tmc_watchdog_task(void* args);

#endif
