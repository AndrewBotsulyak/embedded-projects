#ifndef TMC_REGS_H
#define TMC_REGS_H

// Адреса регистров и раскладка битов TMC2209.
// Эти числа не выводятся из логики — они зафиксированы производителем
// в даташите, и общие для всех модулей, работающих с драйвером.

#define REG_GCONF       0x00 // GCONF — глобальные флаги, в т.ч. откуда брать микрошаг.
#define REG_GSTAT       0x01 // GSTAT — состояние: сброс, ошибка драйвера, просадка питания.
#define REG_IFCNT       0x02 // IFCNT — счётчик успешно принятых записей, растёт на 1 после каждой.
#define REG_IOIN        0x06 // IOIN — состояние входов, в старшем байте версия чипа.
#define REG_IHOLD_IRUN  0x10 // IHOLD_IRUN — токи в движении и в покое.
#define REG_CHOPCONF    0x6C // CHOPCONF — микрошаг, интерполяция, параметры чоппера.

// GCONF
#define GCONF_PDN_DISABLE       (1UL << 6)  // снять с PDN_UART функцию снижения тока — обязательно при работе по UART
#define GCONF_MSTEP_REG_SELECT  (1UL << 7)  // микрошаг берётся из MRES, а не с пинов MS1/MS2
#define GCONF_DEFAULT           0x101UL     // заводское: I_scale_analog + multistep_filt

// GSTAT (R+WC: биты сбрасываются записью единицы в тот же бит)
#define GSTAT_RESET     (1UL << 0)  // чип перезапускался, все регистры вернулись к заводским
#define GSTAT_DRV_ERR   (1UL << 1)  // перегрев или короткое, выходной каскад отключён
#define GSTAT_UV_CP     (1UL << 2)  // просадка на зарядовом насосе — силовое питание слишком низкое

// CHOPCONF
#define CHOPCONF_DEFAULT    0x10000053UL  // заводское: TOFF=3, HSTRT/HEND, TBL, intpol=1
#define CHOPCONF_MRES_SHIFT 24
#define CHOPCONF_MRES_MASK  (0xFUL << CHOPCONF_MRES_SHIFT)
#define MRES_16             4UL   // 0=256, 1=128, 2=64, 3=32, 4=16, 5=8, 6=4, 7=2, 8=полный шаг

// IOIN
#define IOIN_VERSION_SHIFT  24
#define TMC2209_VERSION     0x21  // что должно лежать в старшем байте IOIN

// Датаграммы
#define TMC_SYNC_BYTE   0x05  // первый байт любой датаграммы
#define TMC_MASTER_ADDR 0xFF  // адрес мастера во втором байте ответа
#define TMC_ECHO_LEN    4     // эхо собственного запроса на общей линии
#define TMC_REPLY_LEN   8     // длина ответной датаграммы

#endif /* TMC_REGS_H */
