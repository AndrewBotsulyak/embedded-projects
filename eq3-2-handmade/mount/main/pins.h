#ifndef PINS_H
#define PINS_H

#include "hal/gpio_types.h"

// Все пины ESP32-S3, к которым подключено железо — ЕДИНСТВЕННОЕ место, где они заданы.
// Какие пины можно занимать: info/esp32-pins.md

// UART драйверов TMC2209 — общий провод для обоих драйверов (адреса 0 и 1)
#define UART_TX    GPIO_NUM_17  // → PDN_UART через резистор 1 кΩ
#define UART_RX    GPIO_NUM_18  // ← PDN_UART (на той же линии слышно эхо TX)

// Ось RA: драйвер TMC2209 (адрес 0) + мотор
#define RA_EN_PIN     GPIO_NUM_6   // ENN драйвера (1 = выключен), подтянут к 3.3 В резистором
#define RA_STEP_PIN   GPIO_NUM_5   // импульсы шагов (генерирует FastAccelStepper)
#define RA_DIR_PIN    GPIO_NUM_4   // направление

// Ось DEC: драйвер TMC2209 (адрес 1) + мотор
#define DEC_EN_PIN    GPIO_NUM_16  // ENN драйвера (1 = выключен), подтянуть к 3.3 В резистором 10 кΩ
#define DEC_STEP_PIN  GPIO_NUM_21  // импульсы шагов
#define DEC_DIR_PIN   GPIO_NUM_14  // направление
// GPIO47/48 НЕ использовать: они на линии питания флеш-памяти (см. info/esp32-pins.md)



#endif
