#ifndef TMC_REGS_H
#define TMC_REGS_H

// TMC REGISTERS
#define TMC_REG_IOIN 0x06 // Reads the state of all input pins available - есть ли связь
// Global status flags/ работает по правилу R+WC (Write 1 to Clear): бит 1 в записи гасит флажок, бит 0 оставляет его как есть.
#define TMC_REG_GSTAT 0x01 // reset, drv_err, uv_cp - 3 флага = 3 бита
#define TMC_REG_DRV_STATUS 0x6F // подробное состояние драйвера: аварии, температура, ток
#define TMC_REG_IFCNT 0x02 // инкриментирует значение на каждую успешную запись вв регистр
#define TMC_REG_GCONF 0x00 // общие настройки: откуда брать ток, микрошаг, режим чоппера
#define TMC_REG_OTP_READ 0x05 // сырые 3 байта OTP-памяти, из них берутся заводские значения
#define TMC_REG_CHOPCONF 0x6C // микрошаг и параметры чоппера (нарезки тока)
#define TMC_REG_PWMCONF 0x70 // настройки StealthChop
#define TMC_REG_IHOLD_IRUN 0x10 // токи
#define TMC_REG_TPOWERDOWN 0x11 // когда снижать ток
#define TMC_REG_TPWMTHRS 0x13 // порог скорости StealthChop → SpreadCycle, только запись
#define TMC_REG_TCOOLTHRS 0x14 // с какой скорости включать CoolStep и сигнал упора на DIAG, только запись
#define TMC_REG_SGTHRS    0x40 // чувствительность StallGuard (порог упора), только запись
#define TMC_REG_COOLCONF  0x42 // настройки CoolStep (автоснижение тока), только запись
#define TMC_REG_VACTUAL 0x22 // скорость встроенного генератора шагов, 0 = шаги с пина STEP, только запись
#define TMC_REG_PWM_SCALE 0x71 // что StealthChop делает сейчас: PWM_SCALE_SUM и PWM_SCALE_AUTO, только чтение
#define TMC_REG_PWM_AUTO  0x72 // результаты автоподстройки: PWM_OFS_AUTO и PWM_GRAD_AUTO, только чтение


// TMC REG VALUES
#define TMC_IOIN_VERSION 0x21 // это версия для чипа TMC2209
#define TMC_ENN_PIN_DISABLE 0x01 // пин ENN на драйвере по дефолту дожен иметь логическую 1

// DRV_STATUS BITS
#define DRV_STATUS_OTPW  (1UL << 0)  // предупреждение: чип нагрелся до 120 °C
#define DRV_STATUS_OT    (1UL << 1)  // перегрев: драйвер отключил мотор
#define DRV_STATUS_S2GA  (1UL << 2)  // замыкание фазы A на землю
#define DRV_STATUS_S2GB  (1UL << 3)  // замыкание фазы B на землю
#define DRV_STATUS_S2VSA (1UL << 4)  // замыкание нижнего ключа фазы A
#define DRV_STATUS_S2VSB (1UL << 5)  // замыкание нижнего ключа фазы B
#define DRV_STATUS_OLA   (1UL << 6)  // обрыв обмотки A (надёжно только при медленном движении)
#define DRV_STATUS_OLB   (1UL << 7)  // обрыв обмотки B (надёжно только при медленном движении)
#define DRV_STATUS_T120  (1UL << 8)  // температура выше 120 °C
#define DRV_STATUS_T143  (1UL << 9)  // температура выше 143 °C
#define DRV_STATUS_T150  (1UL << 10) // температура выше 150 °C
#define DRV_STATUS_T157  (1UL << 11) // температура выше 157 °C
// Биты GSTAT
#define GSTAT_RESET   (1UL << 0)  // драйвер перезагрузился, настройки заводские
#define GSTAT_DRV_ERR (1UL << 1)  // перегрев или короткое замыкание, драйвер отключился
#define GSTAT_UV_CP   (1UL << 2)  // низкое напряжение питания мотора (не защёлкивается)

// Аварии, из-за которых драйвер сам отключает мотор
#define DRV_STATUS_CRITICAL (DRV_STATUS_OT | DRV_STATUS_S2GA | DRV_STATUS_S2GB | \
                             DRV_STATUS_S2VSA | DRV_STATUS_S2VSB)

#endif
