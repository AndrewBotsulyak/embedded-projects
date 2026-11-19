#include "tmc-driver.h"

#include <inttypes.h>

#include "driver/gpio.h"
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/semphr.h"
#include "freertos/task.h"

#include "axis-config.h"
#include "tmc-current.h"
#include "tmc-err-codes.h"
#include "tmc-regs.h"
#include "tmc-uart.h"

#include "esp_timer.h"


static const char *TAG = "tmc";

/*
    Ток в движении (IRUN) выбирают два независимых механизма:
    - защита от перегрева (tmc_check_overheat, задача-сторож);
    - повышенный ток перекладки (tmc_set_slew_boost, motion_task).
    Оба пишут один регистр IHOLD_IRUN, поэтому IRUN всегда считает одна функция
    (irun_now) по обоим флагам, а флаги и запись защищены мьютексом:
    иначе одна задача затёрла бы ток, который только что поставила другая.

        перегрев?  → irun_hot   (перегрев главнее: он бережёт драйвер)
        SLEW?      → irun_slew
        иначе      → irun
*/
static bool    overheat_current_reduced[AXIS_COUNT] = {};   // сейчас работаем на пониженном токе?
static int64_t overheat_last_hot_us[AXIS_COUNT]     = {};   // когда последний раз видели otpw (мкс от старта)
static bool    slew_boost[AXIS_COUNT]               = {};   // нужен повышенный ток перекладки?

// Сколько драйвер должен пробыть «холодным» (otpw = 0), прежде чем вернуть полный ток.
// Без этой паузы ток прыгал бы туда-обратно около порога 120 °C.
#define TMC_COOLDOWN_US (30LL * 1000 * 1000)   // 30 секунд

// Мьютекс выбора тока. Статический: создаётся при первом вызове, без выделения памяти
static SemaphoreHandle_t current_mutex() {
    static StaticSemaphore_t buf;
    static SemaphoreHandle_t mutex = xSemaphoreCreateMutexStatic(&buf);
    return mutex;
}

// Какой IRUN нужен оси сейчас (вызывать под current_mutex)
static uint8_t irun_now(axis_t a) {
    if (overheat_current_reduced[a]) return AXES[a].irun_hot;
    if (slew_boost[a])               return AXES[a].irun_slew;
    return AXES[a].irun;
}

// Записать IHOLD_IRUN с IRUN из irun_now (вызывать под current_mutex)
static esp_err_t write_ihold_irun(axis_t a) {
    uint32_t ihold_irun = (TMC_IHOLDDELAY << 16) | ((uint32_t)irun_now(a) << 8) | AXES[a].ihold;
    return tmc_write(a, TMC_REG_IHOLD_IRUN, ihold_irun);
}

/*
    Драйвер перенастроен (initialize_tmc_driver записал обычный AXES[a].irun):
    забыть и перегрев, и повышенный ток — они больше не действуют.
*/
void tmc_overheat_reset(axis_t a) {
    xSemaphoreTake(current_mutex(), portMAX_DELAY);
    overheat_current_reduced[a] = false;
    slew_boost[a] = false;
    xSemaphoreGive(current_mutex());
}

/*
    Защита от перегрева по предупреждению otpw (DRV_STATUS, бит 0).

    otpw = 1 — драйвер нагрелся до 120 °C. Это ещё не авария (мотор работает),
    но до аварийного отключения при 143 °C осталось немного.

    Что делает:
    - otpw появился → снижает ток в движении до AXES[a].irun_hot (даже на SLEW);
    - otpw нет уже 30 секунд → возвращает ток по irun_now: irun или irun_slew.

    Вызывать периодически, например из задачи-сторожа.
    Возвращает ошибку, если не удалось прочитать DRV_STATUS или записать ток.
*/
esp_err_t tmc_check_overheat(axis_t a) {
    uint32_t status;
    esp_err_t err = tmc_read(a, TMC_REG_DRV_STATUS, &status);
    if (err != ESP_OK) {
        return err;
    }

    bool is_hot = status & DRV_STATUS_OTPW;
    int64_t now_us = esp_timer_get_time();   // время от включения ESP, в микросекундах

    xSemaphoreTake(current_mutex(), portMAX_DELAY);

    if (is_hot) {
        overheat_last_hot_us[a] = now_us;

        if (!overheat_current_reduced[a]) {
            uint8_t was = irun_now(a);
            overheat_current_reduced[a] = true;
            err = write_ihold_irun(a);
            if (err != ESP_OK) {
                overheat_current_reduced[a] = false;   // не записали — ток прежний, повторим в следующий раз
            } else {
                ESP_LOGW(TAG, "[%s] Перегрев: драйвер нагрелся до 120 °C, снижаю ток %" PRIu32 " → %" PRIu32 " мА",
                         AXES[a].name, tmc_cs_to_ma(was), tmc_cs_to_ma(AXES[a].irun_hot));
            }
        }
    }
    // otpw нет. Если ток понижен и драйвер достаточно долго холодный — вернуть ток.
    else if (overheat_current_reduced[a] && (now_us - overheat_last_hot_us[a]) >= TMC_COOLDOWN_US) {
        overheat_current_reduced[a] = false;
        err = write_ihold_irun(a);
        if (err != ESP_OK) {
            overheat_current_reduced[a] = true;    // не записали — ток всё ещё пониженный
        } else {
            ESP_LOGI(TAG, "[%s] Драйвер остыл, возвращаю ток %" PRIu32 " мА",
                     AXES[a].name, tmc_cs_to_ma(irun_now(a)));
        }
    }

    xSemaphoreGive(current_mutex());
    return err;
}

/*
    Повышенный ток перекладки: on = true → IRUN = AXES[a].irun_slew, false → обычный.
    При перегреве флаг запоминается, но ток остаётся irun_hot, пока драйвер не остынет.
    Пишет регистр, только если флаг меняется: вызывать можно хоть каждые 50 мс.

    Флаг меняется даже при ошибке записи: иначе вызов повторялся бы в каждом
    цикле motion_task и засыпал бы лог. Неудачная запись UART — повод для сторожа,
    он перенастроит драйвер (и tmc_overheat_reset сбросит флаг).
*/
esp_err_t tmc_set_slew_boost(axis_t a, bool on) {
    xSemaphoreTake(current_mutex(), portMAX_DELAY);

    if (slew_boost[a] == on) {
        xSemaphoreGive(current_mutex());
        return ESP_OK;
    }

    slew_boost[a] = on;
    esp_err_t err = write_ihold_irun(a);
    uint8_t cs = irun_now(a);

    xSemaphoreGive(current_mutex());

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "[%s] Ток перекладки: не удалось записать IHOLD_IRUN (%s)",
                 AXES[a].name, esp_err_to_name(err));
        return err;
    }
    ESP_LOGI(TAG, "[%s] Ток в движении: %" PRIu32 " мА (%s)",
             AXES[a].name, tmc_cs_to_ma(cs), on ? "перекладка" : "обычный");
    return ESP_OK;
}


/*
    Читает DRV_STATUS и пишет в лог все аварии и предупреждения.
    Возвращает:
      ESP_OK                 — аварий нет (предупреждения могут быть)
      ESP_ERR_INVALID_STATE  — есть авария, драйвер отключил мотор
      ошибку чтения          — драйвер не ответил по UART
*/
esp_err_t tmc_log_drv_status(axis_t a) {
    uint32_t status;

    esp_err_t err = tmc_read(a, TMC_REG_DRV_STATUS, &status);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "[%s] DRV_STATUS: не удалось прочитать регистр: %s", AXES[a].name, tmc_err_to_name(err));
        return err;
    }

    // --- Аварии: мотор отключён ---
    if (status & DRV_STATUS_OT) {
        ESP_LOGE(TAG, "DRV_STATUS.ot: перегрев, драйвер отключил мотор до остывания");
    }
    if (status & DRV_STATUS_S2GA) {
        ESP_LOGE(TAG, "DRV_STATUS.s2ga: замыкание фазы A на землю, проверь провода мотора");
    }
    if (status & DRV_STATUS_S2GB) {
        ESP_LOGE(TAG, "DRV_STATUS.s2gb: замыкание фазы B на землю, проверь провода мотора");
    }
    if (status & DRV_STATUS_S2VSA) {
        ESP_LOGE(TAG, "DRV_STATUS.s2vsa: замыкание нижнего ключа фазы A");
    }
    if (status & DRV_STATUS_S2VSB) {
        ESP_LOGE(TAG, "DRV_STATUS.s2vsb: замыкание нижнего ключа фазы B");
    }

    // --- Предупреждения: мотор ещё работает ---
    if (status & DRV_STATUS_OTPW) {
        ESP_LOGW(TAG, "DRV_STATUS.otpw: драйвер нагрелся до 120 °C, стоит снизить ток");
    }

    // Пороги температуры включаются по очереди, поэтому пишем только самый высокий
    if (status & DRV_STATUS_T157) {
        ESP_LOGW(TAG, "DRV_STATUS: температура выше 157 °C");
    } else if (status & DRV_STATUS_T150) {
        ESP_LOGW(TAG, "DRV_STATUS: температура выше 150 °C");
    } else if (status & DRV_STATUS_T143) {
        ESP_LOGW(TAG, "DRV_STATUS: температура выше 143 °C");
    } else if (status & DRV_STATUS_T120) {
        ESP_LOGW(TAG, "DRV_STATUS: температура выше 120 °C");
    }

    if (status & DRV_STATUS_OLA) {
        ESP_LOGW(TAG, "DRV_STATUS.ola: возможен обрыв обмотки A (в покое бывает ложным)");
    }
    if (status & DRV_STATUS_OLB) {
        ESP_LOGW(TAG, "DRV_STATUS.olb: возможен обрыв обмотки B (в покое бывает ложным)");
    }

    if (status & DRV_STATUS_CRITICAL) {
        return ESP_ERR_INVALID_STATE;
    }

    return ESP_OK;
}

/*
    Проверка связи с драйвером оси a (info/two-axes.md, шаг 2).

    Читает IOIN по адресу AXES[a].uart_addr — несколько попыток с паузой, но
    НЕ бесконечно (в отличие от tmc_init_step_1): если драйвер не подключён,
    программа не зависает, а просто пишет ошибку.

    IOIN показывает уровни на пинах самого драйвера — по ним видно, правильно
    ли выставлен адрес: адрес = MS1 + 2 × MS2 (RA: 0/0, DEC: MS1 = 1, MS2 = 0).

    Возвращает ESP_OK, если ответил TMC2209 (версия 0x21).
*/
esp_err_t tmc_check_connection(axis_t a) {
    const int ATTEMPTS = 5;
    uint32_t ioin = 0;
    esp_err_t err = ESP_FAIL;

    for (int i = 0; i < ATTEMPTS; i++) {
        err = tmc_read(a, TMC_REG_IOIN, &ioin);
        if (err == ESP_OK) break;
        vTaskDelay(pdMS_TO_TICKS(100));
    }

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "[%s] Связь: драйвер с адресом %u не отвечает (%s). "
                      "Проверь питание VS, MS1/MS2 (адрес), провод PDN_UART",
                 AXES[a].name, AXES[a].uart_addr, tmc_err_to_name(err));
        return err;
    }

    uint8_t  version = ioin >> 24;
    uint32_t enn = (ioin >> 0) & 1;
    uint32_t ms1 = (ioin >> 2) & 1;
    uint32_t ms2 = (ioin >> 3) & 1;
    uint32_t addr_by_pins = ms1 + 2 * ms2;

    ESP_LOGI(TAG, "[%s] Связь: адрес %u ответил, версия 0x%02X, MS1 = %" PRIu32 ", MS2 = %" PRIu32
                  " (адрес по пинам = %" PRIu32 "), ENN = %" PRIu32 " (%s)",
             AXES[a].name, AXES[a].uart_addr, version, ms1, ms2, addr_by_pins,
             enn, enn ? "драйвер выключен" : "драйвер ВКЛЮЧЁН");

    if (addr_by_pins != AXES[a].uart_addr) {
        // Драйвер отвечает только на свой адрес, поэтому в норме сюда не попасть.
        // Если попали — пины MS1/MS2 читаются не так, как выставлены (плохой контакт, помеха).
        ESP_LOGE(TAG, "[%s] Связь: пины MS1/MS2 дают адрес %" PRIu32 ", а в конфиге %u — проверь MS1/MS2",
                 AXES[a].name, addr_by_pins, AXES[a].uart_addr);
        return ESP_ERR_INVALID_STATE;
    }

    if (version != TMC_IOIN_VERSION) {
        ESP_LOGE(TAG, "[%s] Связь: версия 0x%02X — это не TMC2209 (ожидалась 0x%02X)",
                 AXES[a].name, version, TMC_IOIN_VERSION);
        return ESP_ERR_TMC_WRONG_CHIP;
    }

    return ESP_OK;
}

// TMC INITIALIZATION STEPS
static void log_step_success(axis_t a, uint8_t step) {
    ESP_LOGI(TAG, "[%s] TMC INIT STEP %d - SUCCESS", AXES[a].name, step);
}

/*
    Логирует заводские значения регистров, которые чип загрузил из OTP при включении.
    Вызывать ДО своей настройки, иначе прочитаются уже наши значения.
    Нужна для отладки: главное здесь internal_Rsense — от него зависит формула тока.
*/
void log_default_config(axis_t a) {
    uint32_t gconf, chopconf, pwmconf, otp;

    if (tmc_read(a, TMC_REG_GCONF, &gconf) != ESP_OK ||
        tmc_read(a, TMC_REG_CHOPCONF, &chopconf) != ESP_OK ||
        tmc_read(a, TMC_REG_PWMCONF, &pwmconf) != ESP_OK ||
        tmc_read(a, TMC_REG_OTP_READ, &otp) != ESP_OK) {
        ESP_LOGE(TAG, "Заводские настройки: не удалось прочитать регистры");
        return;
    }

    ESP_LOGI(TAG, "=== [%s] Заводские настройки драйвера (из OTP) ===", AXES[a].name);

    // GCONF
    ESP_LOGI(TAG, "GCONF    = 0x%08" PRIX32, gconf);
    ESP_LOGI(TAG, "  internal_Rsense = %" PRIu32 " (%s)", (gconf >> 1) & 0x1,
             ((gconf >> 1) & 0x1) ? "ток меряют встроенные резисторы" : "ток меряют внешние резисторы на плате");
    ESP_LOGI(TAG, "  en_spreadCycle  = %" PRIu32 " (%s)", (gconf >> 2) & 0x1,
             ((gconf >> 2) & 0x1) ? "по умолчанию SpreadCycle" : "по умолчанию StealthChop");

    // CHOPCONF
    ESP_LOGI(TAG, "CHOPCONF = 0x%08" PRIX32, chopconf);
    ESP_LOGI(TAG, "  TOFF  = %" PRIu32 " (0 = драйвер выключен)", chopconf & 0xF);
    ESP_LOGI(TAG, "  HSTRT = %" PRIu32 ", HEND = %" PRIu32 " (параметры SpreadCycle)",
             (chopconf >> 4) & 0x7, (chopconf >> 7) & 0xF);
    ESP_LOGI(TAG, "  TBL   = %" PRIu32 " (время слепоты датчика тока: 16/24/32/40 тактов)",
             (chopconf >> 15) & 0x3);

    // PWMCONF
    ESP_LOGI(TAG, "PWMCONF  = 0x%08" PRIX32, pwmconf);
    ESP_LOGI(TAG, "  PWM_OFS = %" PRIu32 ", PWM_GRAD = %" PRIu32 " (старт автоподстройки StealthChop)",
             pwmconf & 0xFF, (pwmconf >> 8) & 0xFF);
    ESP_LOGI(TAG, "  pwm_freq = %" PRIu32 " (0..3, частота ШИМ), PWM_REG = %" PRIu32 " (скорость автоподстройки)",
             (pwmconf >> 16) & 0x3, (pwmconf >> 24) & 0xF);
    ESP_LOGI(TAG, "  pwm_autoscale = %" PRIu32 ", pwm_autograd = %" PRIu32 " (1 = автоподстройка включена)",
             (pwmconf >> 18) & 0x1, (pwmconf >> 19) & 0x1);

    // OTP_READ: стр. 23-24 даташита
    ESP_LOGI(TAG, "OTP_READ = 0x%06" PRIX32 " (сырые байты OTP)", otp & 0xFFFFFF);
    ESP_LOGI(TAG, "  FCLKTRIM = %" PRIu32 " (заводская калибровка генератора, у каждого чипа своя)",
             otp & 0x1F);
    ESP_LOGI(TAG, "  otp_internalRsense = %" PRIu32 ", otp_en_spreadCycle = %" PRIu32,
             (otp >> 6) & 0x1, (otp >> 23) & 0x1);
}

/*
    ENN = 1 - значит я выключаю силовую схему питания на мотор
    с самого начала необходимо выключить - потом настроить регистры
    Логику TMC2209 питает внутренний стабилизатор от питания мотора VS,
    а не от 3.3 В микроконтроллера. Если блок питания мотора выключен, драйвер по UART не ответит.
*/
esp_err_t tmc_init_step_0(axis_t a) {
    gpio_config_t pGPIOConfig = {
        .pin_bit_mask = 1ULL << AXES[a].en_pin,
        .mode = GPIO_MODE_OUTPUT,
        .pull_up_en = GPIO_PULLUP_DISABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_DISABLE
    };

    esp_err_t err = gpio_config(&pGPIOConfig);

    if (err != ESP_OK) return err;

    gpio_set_level(AXES[a].en_pin, 1);

    log_step_success(a, 0);

    return ESP_OK;
}

/*
    Тут я проверяю связь с TMC с помощью чтения регистра IOIN
    - если ответил то связь есть, также проверка на правильную версию драйвера TMC2209 = 0x21,
    для других версий регистры отличаются.
    + дополнительная проверка что пин драйвера ENN в состоянии = 1 (силовая схема выкл)

    Ждёт ответа ОГРАНИЧЕННОЕ время (~2 с), а не бесконечно: функцию вызывает и сторож
    при перенастройке, и бесконечное ожидание там «заморозило» бы сторож для всех осей.
    Возвращает:
      ESP_ERR_TIMEOUT        — драйвер не ответил (нет питания VS / провода UART);
                               при старте app_main повторяет настройку, пока не ответит;
      ESP_ERR_TMC_WRONG_CHIP  — ответил не TMC2209;
      ESP_ERR_TMC_ENN_LOW  — ENN = 0 (драйвер включён до настройки — проверь подтяжку EN).
*/
#define TMC_STEP1_ATTEMPTS 20   // × 100 мс = ~2 с

esp_err_t tmc_init_step_1(axis_t a) {
    uint32_t regValue;
    esp_err_t err = ESP_FAIL;

    for (int i = 0; i < TMC_STEP1_ATTEMPTS; i++) {
        err = tmc_read(a, TMC_REG_IOIN, &regValue);
        // пока приходят эти ошибки - повторяем попытку
        if (err != ESP_ERR_TMC_NO_RESPONSE && err != ESP_ERR_TMC_INVALID_CRC) {
            break;   // ответил (или другая ошибка — разберём ниже)
        }
        vTaskDelay(pdMS_TO_TICKS(100));
    }

    if (err == ESP_ERR_TMC_NO_RESPONSE) {
        ESP_LOGE(TAG, "[%s] tmc_init_step_1: драйвер не ответил за ~%d мс — нет питания VS или сигнала UART",
                 AXES[a].name, TMC_STEP1_ATTEMPTS * 100);
        return ESP_ERR_TIMEOUT;
    }

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Ошибка: %s", tmc_err_to_name(err));
        return err;
    }

    uint8_t currVersion = (regValue >> 24);

    if (currVersion != TMC_IOIN_VERSION) {
        ESP_LOGE(TAG, "TMC VERSION ISN'T correct: version = %d", currVersion);
        return ESP_ERR_TMC_WRONG_CHIP;
    }

    ESP_LOGI(TAG, "TMC VERSION IS '%d'", currVersion);

    uint8_t isEnnPinHIGH = regValue & TMC_ENN_PIN_DISABLE;

    if (isEnnPinHIGH == false) {
        ESP_LOGE(TAG, "TMC ENN pin has LOW level (should be HIGH by default)");
        return ESP_ERR_TMC_ENN_LOW;
    }

    log_step_success(a, 1);

    return ESP_OK;
}

/*
    Прочитать GSTAT
    обнулить reset bit (установить в единицу 1)
    прочитать drv_err и uv_cp
*/
esp_err_t tmc_init_step_2(axis_t a) {
    uint32_t gstat;

    esp_err_t err = tmc_read(a, TMC_REG_GSTAT, &gstat);

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Ошибка: %s", tmc_err_to_name(err));
        return err;
    }

    bool isOverTemperature = gstat & (1UL << 1);
    bool isUnderVoltage = gstat & (1UL << 2);

    if (isOverTemperature == true) {
        ESP_LOGE(TAG, "GSTAT.drv_err: драйвер отключил мотор из-за перегрева или короткого замыкания. "
                  "Подробности в DRV_STATUS (0x6F)");
        tmc_log_drv_status(a);
        return ESP_ERR_NOT_ALLOWED;
    }

    if (isUnderVoltage) {
        ESP_LOGE(TAG, "GSTAT.uv_cp: низкое напряжение питания мотора (VS), драйвер отключён.");
        tmc_log_drv_status(a);
        return ESP_ERR_NOT_ALLOWED;
    }

    esp_err_t gstat_err = tmc_write(a, TMC_REG_GSTAT, 7); // устанавливаю 0000 0111 - этим сбрасываю все флаги

    if (gstat_err != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_2: Write to TMC_REG_GSTAT with Error");
        return gstat_err;
    }

    log_step_success(a, 2);
    return ESP_OK;
}

/*
    Что такое TOFF = 0: программный выключатель драйвера.
    Драйвер подаёт ток в мотор, только если включены ОБА выключателя:

        питание ──[ ENN ]──[ TOFF ]──► обмотки мотора
                  пин       поле в CHOPCONF

    - TOFF = 0      → все силовые ключи закрыты, тока в обмотках нет, вал свободен;
    - TOFF = 1..15  → драйвер работает (после включения питания там 3, т.е. драйвер
                      уже «включён» программно, и держит его выключенным только ENN = 1).
    Выключаем на время настройки, чтобы смена тока и режимов не давала рывков.
    Включается обратно на последнем шаге 11 (TOFF = 5).

    Поменять в `CHOPCONF` только поле **`TOFF`** (биты 3..0) на 0, не трогая остальные биты
    Так как EN подключён к ESP и уже `ENN=1`, этот шаг можно пропустить.
    но он безвреден и защищает от ошибок в разводке.
    То есть это дополнительная защита.
*/
esp_err_t tmc_init_step_3(axis_t a) {
    uint32_t chopConf;
    esp_err_t err_chop = tmc_read(a, TMC_REG_CHOPCONF, &chopConf);

    if (err_chop != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_3: Ошибка чтения TMC_REG_CHOPCONF");
        return err_chop;
    }

    chopConf &= ~(uint32_t)0x0F;

    esp_err_t err_write = tmc_write(a, TMC_REG_CHOPCONF, chopConf);

    if (err_write != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_3: Ошибка записи TMC_REG_CHOPCONF");
        return err_write;
    }

    log_step_success(a, 3);
    return ESP_OK;
}

/*
    GCONF (0x00) — общие настройки: как чип понимает все остальные регистры.
    Записывается первым из содержательных регистров:
    - pdn_disable = 1: пин PDN_UART работает только как UART (иначе данные UART
      воспринимаются как команды «снижай ток / не снижай»);
    - mstep_reg_select = 1: микрошаг берётся из CHOPCONF.MRES, а не с пинов MS1/MS2
      (они у нас задают UART-адрес и дали бы 1/8);
    - I_scale_analog = 0: ток задают только регистры, подстроечник VREF не влияет;
    - internal_Rsense = 0: ток меряется внешними резисторами R110 (проверено);
    - en_spreadCycle = 0: режим StealthChop.
    Ожидаемый результат: 0x1C0. Регистр читаемый, поэтому меняем только нужные биты.
*/
esp_err_t tmc_init_step_4(axis_t a) {
    uint32_t gconf;

    esp_err_t err_gconf = tmc_read(a, TMC_REG_GCONF, &gconf);

    if (err_gconf != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_4: Ошибка чтения регистра TMC_REG_GCONF.");
        return err_gconf;
    }

    /*
        Изменения относительно заводского 0x101:
        I_scale_analog: 1 → 0 (ток только из регистров);
        pdn_disable: 0 → 1 (пин работает только как UART);
        mstep_reg_select: 0 → 1 (микрошаг из регистра).
    */
    gconf &= ~(uint32_t)1; // I_scale_analog: ток задают регистры, подстроечник VREF не влияет
    gconf &= ~(1UL << 1); // internal_Rsense: ток меряется внешними резисторами, два резистора R110
    gconf &= ~(1UL << 2); // en_spreadCycle: StealthChop: тихо и плавно на скорости ведения
    if (AXES[a].shaft) gconf |= (1UL << 3);   // shaft: инвертировать направление (из конфига оси)
    else               gconf &= ~(1UL << 3);
    gconf &= ~(3UL << 4); // bit 4 (index_otpw) and 5 (index_step) default values are 0, не влияет ни на что.
    gconf |= (1UL << 6); // pdn_disable: отключить вторую функцию пина UART → 1 (обязательно)
    gconf |= (1UL << 7); // mstep_reg_select: микрошаг = поле MRES в CHOPCONF → что зададим (1/16, 1/64 ...)
    gconf |= (1UL << 8); // multistep_filt: сглаживание шагов на высокой скорости → 1
    gconf &= ~(1UL << 9); // test_mode: заводской тестовый режим → 0 (всегда)

    esp_err_t err_write = tmc_write(a, TMC_REG_GCONF, gconf);

    if (err_write != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_4: Ошибка записи регистра TMC_REG_GCONF.");
        return err_write;
    }

    log_step_success(a, 4);
    return ESP_OK;
}

/*
    IHOLD_IRUN (0x10) — токи мотора по шкале CS 0..31 (I = (CS+1)/32 × TMC_FULL_SCALE_MA;
    при vsense = 1 максимум 978 мА, см. tmc-current.h):
    - IHOLD (биты 4..0)       — ток в покое;
    - IRUN (биты 12..8)       — ток в движении;
    - IHOLDDELAY (биты 19..16) — плавность спуска от IRUN к IHOLD
      (каждая ступенька ≈ IHOLDDELAY × 21.8 мс).
    Значения — из конфига оси: AXES[a].irun / AXES[a].ihold.
    Записывается до включения драйвера, потому что автоподстройка StealthChop
    при включении настраивается на ток IRUN.
    Регистр только на запись: проверить запись можно лишь через IFCNT.
*/
esp_err_t tmc_init_step_5(axis_t a) {
    uint32_t ihold_irun = 0;
    
    ihold_irun |= AXES[a].ihold;
    ihold_irun |= (AXES[a].irun << 8);
    ihold_irun |= (TMC_IHOLDDELAY << 16);

    esp_err_t err_write = tmc_write(a, TMC_REG_IHOLD_IRUN, ihold_irun);

    if (err_write != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_5: Ошибка записи регистра TMC_REG_IHOLD_IRUN.");
        return err_write;
    }

    log_step_success(a, 5);
    return ESP_OK;
}

/*
    TPOWERDOWN (0x11) — сколько ждать после остановки мотора, прежде чем
    начать снижать ток до IHOLD. Единица ≈ 21.8 мс, 128 ≈ 2.8 с.
    - минимум 2, иначе не работает автоподстройка StealthChop;
    - 2.8 с: при коротких паузах ток не дёргается вниз-вверх,
      при долгой остановке мотор не греется зря.
    На ведение не влияет: при 1/64 и ремне 3:1 шаги RA идут каждые 17 мс, а драйвер считает
    мотор остановленным только после 87 мс без шагов.
    Регистр только на запись: проверить запись можно лишь через IFCNT.
*/
esp_err_t tmc_init_step_6(axis_t a) {
    uint32_t tpower_down = 128;

    esp_err_t write_tpower_down = tmc_write(a, TMC_REG_TPOWERDOWN, tpower_down);

    if (write_tpower_down != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_6: Ошибка записи регистра TMC_REG_TPOWERDOWN.");
        return write_tpower_down;
    }

    log_step_success(a, 6);
    return ESP_OK;
}

esp_err_t tmc_init_step_7(axis_t a) {

    uint32_t pwmconf= 0;

    pwmconf |= 36UL; // PWM_OFS: Сколько напряжения (из 255) подавать стоящему мотору при полном токе.
    pwmconf |= ((uint32_t)AXES[a].pwm_grad << 8); // PWM_GRAD (из конфига оси): На сколько увеличивать напряжение с ростом скорости. стартовая точка: во время движения на средней скорости (AT#2) драйвер подстраивает его сам
    pwmconf |= (1UL << 16); // pwm_freq: как часто переключаются ключи (35 кГц)
    pwmconf |= (1UL << 18); // pwm_autoscale: следить за током
    pwmconf &= ~(1UL << 19); // pwm_autograd = 0: использовать PWM_GRAD из регистра как есть (36)
    // pwmconf |= (1UL << 19); // для калибровки разкоментировать

    pwmconf &= ~(3UL << 20); // freewheel: что делать, если ток покоя равен нулю
    pwmconf |= (8UL << 24); // PWM_REG: насколько резко исправлять ток
    pwmconf |= (12UL << 28); // PWM_LIM: ограничение рывка при смене режима

    esp_err_t err_pwmconf = tmc_write(a, TMC_REG_PWMCONF, pwmconf);

    if (err_pwmconf != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_7: Ошибка записи регистра TMC_REG_PWMCONF.");
        return err_pwmconf;
    }

    log_step_success(a, 7);
    return ESP_OK;
}

/*
    TPWMTHRS (0x13) — выше какой скорости переключаться со StealthChop на SpreadCycle.
    0 = никогда не переключаться: StealthChop и на ведении, и на перекладке.
    Регистр только на запись.
*/
esp_err_t tmc_init_step_8(axis_t a) {
    esp_err_t err = tmc_write(a, TMC_REG_TPWMTHRS, 0);

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_8: Ошибка записи регистра TMC_REG_TPWMTHRS.");
        return err;
    }

    log_step_success(a, 8);
    return ESP_OK;
}

/*
    TCOOLTHRS (0x14), SGTHRS (0x40), COOLCONF (0x42) — выключить CoolStep и StallGuard.
    - CoolStep сам снижает ток при малой нагрузке: телескопу нужен постоянный ток,
      иначе при порыве ветра или задевшем кабеле можно пропустить шаг;
    - StallGuard (определение упора) на скорости ведения не работает:
      мотор крутится слишком медленно, оценка нагрузки бессмысленна.
    После включения питания все три и так равны 0, но пишем явно,
    чтобы конфигурация была видна в коде и не зависела от прошлых экспериментов.
    Все три регистра только на запись: не читаем, а пишем сразу.
    (Определение упора на перекладке — отдельная задача, см. info/todo.md, пункт 3.)
*/
esp_err_t tmc_init_step_9(axis_t a) {
    esp_err_t err = tmc_write(a, TMC_REG_TCOOLTHRS, 0); // 0 = CoolStep и сигнал упора не включаются ни на какой скорости
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_9: Ошибка записи регистра TMC_REG_TCOOLTHRS.");
        return err;
    }

    err = tmc_write(a, TMC_REG_SGTHRS, 0); // 0 = сигнал «упёрся» никогда не срабатывает
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_9: Ошибка записи регистра TMC_REG_SGTHRS.");
        return err;
    }

    err = tmc_write(a, TMC_REG_COOLCONF, 0); // SEMIN = 0 → CoolStep выключен (стр. 27)
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_9: Ошибка записи регистра TMC_REG_COOLCONF.");
        return err;
    }

    log_step_success(a, 9);
    return ESP_OK;
}

/*
    VACTUAL (0x22) — откуда драйвер берёт шаги.
    - 0: драйвер слушает пин STEP — шаги генерирует FastAccelStepper на ESP;
    - не 0: драйвер сам крутит мотор со скоростью VACTUAL (встроенный генератор),
      а импульсы на пине STEP ИГНОРИРУЕТ.
    Нам нужен 0: скорость, разгон и счёт позиции ведёт FastAccelStepper.
    После включения питания и так 0, но пишем явно: если VACTUAL окажется
    ненулевым (например, после экспериментов), мотор начнёт крутиться сам
    и не будет слушать FastAccelStepper.
    Регистр только на запись: не читаем, а пишем сразу.
*/
esp_err_t tmc_init_step_10(axis_t a) {
    esp_err_t err = tmc_write(a, TMC_REG_VACTUAL, 0);

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_10: Ошибка записи регистра TMC_REG_VACTUAL.");
        return err;
    }

    log_step_success(a, 10);
    return ESP_OK;
}

/*
    CHOPCONF (0x6C) — микрошаг, параметры «нарезки» тока и ВКЛЮЧЕНИЕ драйвера.
    Записывается последним: TOFF ≠ 0 замыкает программный выключатель драйвера,
    поэтому к этому моменту ток, режим и StealthChop уже должны быть настроены.
    Мотор при этом ещё обесточен, пока на пине EN = 1: ток пойдёт после ENN = 0.
    - TOFF = 5       — драйвер включён (в StealthChop работает только как выключатель);
    - HSTRT/HEND     — параметры SpreadCycle, заданы на будущее для гибридного режима;
    - TBL = 2        — «время слепоты» датчика тока после переключения ключей;
    - vsense         — диапазон тока из TMC_VSENSE (tmc-current.h): 1 — до 978 мА (у нас ~700 мА);
    - MRES = 2       — микрошаг 1/64, из конфига оси (работает, т.к. в GCONF mstep_reg_select = 1);
    - intpol = 1     — драйвер дробит каждый шаг 1/64 до 1/256 (MicroPlyer), движение плавное;
    - dedge = 0, diss2g = 0, diss2vs = 0 — обычные шаги, защита от замыкания включена.
    Собираем значение с нуля, потому что задаём все поля регистра.
    Ожидаемый результат при MRES = 2: 0x12030045 с vsense = 1 (0x12010045 с vsense = 0).
    Регистр читаемый — можно проверить чтением.
*/
esp_err_t tmc_init_step_11(axis_t a) {
    uint32_t chopconf = 0;

    chopconf |= 5UL; // TOFF: Значение 5 взято из Quick Configuration Guide на случай, если позже включить SpreadCycle.
    chopconf |= (4UL << 4); // HSTRT: Стартовые значения из datasheet заданы на будущее, если понадобится гибридный режим 
    chopconf &= ~(15UL << 7); // HEND: Стартовые значения из datasheet заданы на будущее, если понадобится гибридный режим 
    // В момент переключения ключей на измерительном резисторе возникает короткий всплеск-помеха. Чтобы драйвер не принял его за настоящий ток, он на мгновение «закрывает глаза»:
    chopconf |= (2UL << 15); // TBL: «время слепоты» датчика тока, 2 = 32 такта (2.7 мкс)
    // vsense: диапазон тока. Задаётся в tmc-current.h, там же по нему считаются токи CS
    if (TMC_VSENSE) chopconf |= (1UL << 17);
    else            chopconf &= ~(1UL << 17);
    chopconf &= ~(15UL << 24);
    chopconf |= ((uint32_t)AXES[a].mres << 24); // MRES: микрошаг из конфига оси (0 = 1/256, 2 = 1/64 ...)
    chopconf |= (1UL << 28); // intpol: интерполяция, Оставлено заводское значение.
    // Нужен слабым микроконтроллерам, чтобы вдвое снизить частоту импульсов. FastAccelStepper выдаёт обычные импульсы, а ещё этот режим несовместим с фильтром multistep_filt из GCONF (стр. 30). Поэтому 0
    chopconf &= ~(1UL << 29); // dedge: = 0:  шаг на каждый подъём сигнала STEP, dedge = 1:  шаг и на подъём, и на спад 
    chopconf &= ~(1UL << 30); // diss2g: защита от замыкания. Всегда 0: защита должна работать.
    chopconf &= ~(1UL << 31); // diss2vs: защита от замыкания. Всегда 0: защита должна работать.

    esp_err_t err_chopconf = tmc_write(a, TMC_REG_CHOPCONF, chopconf);

    if (err_chopconf != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_11: Ошибка записи регистра TMC_REG_CHOPCONF.");
        return err_chopconf;
    }

    uint32_t chopconf_read;
    esp_err_t err_read_chopconf = tmc_read(a, TMC_REG_CHOPCONF, &chopconf_read);

    if (err_read_chopconf != ESP_OK) {
        ESP_LOGE(TAG, "tmc_init_step_11: Ошибка чтения регистра TMC_REG_CHOPCONF.");
        return err_read_chopconf;
    }

    if (chopconf_read != chopconf) {
        ESP_LOGE(TAG, "tmc_init_step_11: Значение при записи и чтении отличаются TMC_REG_CHOPCONF.");
        return ESP_ERR_TMC_VERIFY_FAILED;
    }

    log_step_success(a, 11);
    return ESP_OK;
}

esp_err_t handle_drivers_connection() {
    // ENN = 1 для ВСЕХ осей сразу: пока драйвер не настроен, он должен быть выключен,
    // даже если на модуле нет подтяжки EN (иначе ненастроенный драйвер
    // включится сам на заводском микрошаге 1/32)
    tmc_init_step_0(AXIS_RA);
    tmc_init_step_0(AXIS_DEC);

    // RA: ESP может загрузиться раньше, чем появится питание моторов VS, поэтому
    // повторяем настройку, пока драйвер не ответит (tmc_init_step_1 ждёт ~2 с за попытку).
    // Другие ошибки (не тот чип, ENN = 0, ошибка записи) — остановка.
    esp_err_t err_init;
    while ((err_init = initialize_tmc_driver(AXIS_RA)) == ESP_ERR_TIMEOUT) {
        ESP_LOGW(TAG, "app_main: драйвер RA не отвечает — жду питание моторов VS");
    }

    if (err_init != ESP_OK) return ESP_ERR_TMC_RA_NOT_CONFIGURED;

    // DEC: проверяем связь только ТЕПЕРЬ — RA ответил, значит питание VS уже есть.
    bool dec_ok = (tmc_check_connection(AXIS_DEC) == ESP_OK)
               && (initialize_tmc_driver(AXIS_DEC) == ESP_OK);
    if (!dec_ok) {
        ESP_LOGE(TAG, "app_main: драйвер DEC не настроен — ось DEC выключена");
        return ESP_ERR_TMC_DEC_NOT_CONFIGURED;
    }

    return ESP_OK;
}


/*
    Полная настройка драйвера оси a: шаги 0–11 по порядку.
    Порядок и смысл шагов — info/tmc-algorithm.md.
*/
esp_err_t initialize_tmc_driver(axis_t a) {
    // ENN = 1: силовая часть выключена, пока настраиваем регистры
    esp_err_t err_step_0 = tmc_init_step_0(a);
    if (err_step_0 != ESP_OK) return err_step_0;

    // IOIN: есть ли связь по UART, это TMC2209 (версия 0x21), ENN действительно = 1
    esp_err_t err_step_1 = tmc_init_step_1(a);
    if (err_step_1 != ESP_OK) return err_step_1;

    // GSTAT: нет ли аварий при старте, сбросить флаги (дальше reset = драйвер перезагрузился)
    esp_err_t err_step_2 = tmc_init_step_2(a);
    if (err_step_2 != ESP_OK) return err_step_2;

    // Лог заводских значений из OTP (до нашей настройки)
    log_default_config(a);

    // CHOPCONF: TOFF = 0 — программно выключить драйвер (вторая защита к ENN)
    esp_err_t err_step_3 = tmc_init_step_3(a);
    if (err_step_3 != ESP_OK) return err_step_3;

    // GCONF: ток из регистров, микрошаг из MRES, пин PDN только UART, StealthChop
    esp_err_t err_step_4 = tmc_init_step_4(a);
    if (err_step_4 != ESP_OK) return err_step_4;

    // IHOLD_IRUN: ток в движении 1049 мА, в покое 552 мА, плавный спуск
    esp_err_t err_step_5 = tmc_init_step_5(a);
    if (err_step_5 != ESP_OK) return err_step_5;

    // TPOWERDOWN: снижать ток до IHOLD через ~2.8 с после остановки
    esp_err_t err_step_6 = tmc_init_step_6(a);
    if (err_step_6 != ESP_OK) return err_step_6;

    // PWMCONF: настройки StealthChop и автоподстройки (PWM_GRAD = 51)
    esp_err_t err_step_7 = tmc_init_step_7(a);
    if (err_step_7 != ESP_OK) return err_step_7;

    // TPWMTHRS = 0: всегда StealthChop, без переключения на SpreadCycle
    esp_err_t err_step_8 = tmc_init_step_8(a);
    if (err_step_8 != ESP_OK) return err_step_8;

    // TCOOLTHRS, SGTHRS, COOLCONF = 0: выключить CoolStep и StallGuard
    esp_err_t err_step_9 = tmc_init_step_9(a);
    if (err_step_9 != ESP_OK) return err_step_9;

    // VACTUAL = 0: шаги берутся с пина STEP (от FastAccelStepper)
    esp_err_t err_step_10 = tmc_init_step_10(a);
    if (err_step_10 != ESP_OK) return err_step_10;

    // CHOPCONF: микрошаг из конфига (1/64), TOFF = 5 — драйвер включён (ток пойдёт после ENN = 0)
    esp_err_t err_step_11 = tmc_init_step_11(a);
    if (err_step_11 != ESP_OK) return err_step_11;

    uint32_t pwmconf;
    if (tmc_read(a, TMC_REG_PWMCONF, &pwmconf) == ESP_OK) {
    ESP_LOGI(TAG, "[%s] PWMCONF = 0x%08" PRIX32 ": PWM_GRAD = %" PRIu32 ", pwm_autograd = %" PRIu32,
             AXES[a].name, pwmconf, (pwmconf >> 8) & 0xFF, (pwmconf >> 19) & 1);
    }

    return ESP_OK;
}

void tmc_driver_on(axis_t a) {
    gpio_set_level(AXES[a].en_pin, 0);       // мотор под током IRUN
    vTaskDelay(pdMS_TO_TICKS(200));      // AT#1: драйвер сам подстраивается, шагов не подаём
    // дальше можно двигать мотор
}

/*
    Выключить питание мотора с помощью пина EN = 1
*/
void tmc_driver_off(axis_t a) {
    gpio_set_level(AXES[a].en_pin, 1);
}

/*
    Прочитать «как сейчас работает автоподстройка StealthChop».

    Зачем: StealthChop не меряет ток на каждом импульсе, а подаёт на обмотку
    рассчитанную долю напряжения:
        напряжение = PWM_OFS + PWM_GRAD × скорость
    Числа PWM_OFS и PWM_GRAD драйвер подбирает сам (AT#1 в покое, AT#2 в движении).
    Эта функция — «окошко» в этот процесс: показывает, что драйвер подаёт сейчас
    и что он уже нашёл. Используется калибровкой tmc_calibrate_at2(), чтобы
    понять, идёт ли подстройка и закончилась ли она.

    Читает два регистра (оба только для чтения) и раскладывает их на 4 числа:

    PWM_SCALE (0x71) — что происходит ПРЯМО СЕЙЧАС:
      scale_sum  (биты 7..0)   — какую долю напряжения питания (0..255) драйвер
                                 подаёт на обмотку. 255 = упёрлись в потолок:
                                 питания не хватает на эту скорость.
      scale_auto (биты 24..16) — насколько регулятор поправляет напряжение,
                                 чтобы ток был ровно IRUN. Число со знаком.
                                 Около 0 = подстройка попала точно, поправки не нужны.

    PWM_AUTO (0x72) — что драйвер УЖЕ НАШЁЛ:
      ofs_auto   (биты 7..0)   — PWM_OFS_AUTO, результат AT#1 (напряжение в покое).
                                 0 = AT#1 ещё не прошёл.
      grad_auto  (биты 23..16) — PWM_GRAD_AUTO, результат AT#2 (добавка на скорость).
                                 У нашего мотора после калибровки = 51.

    Возвращает ESP_OK или ошибку чтения по UART; результат кладёт в *st.
*/
esp_err_t tmc_read_at_state(axis_t a, tmc_at_state_t *st) {
    uint32_t pwm_scale, pwm_auto;

    esp_err_t err = tmc_read(a, TMC_REG_PWM_SCALE, &pwm_scale);
    if (err != ESP_OK) return err;
    err = tmc_read(a, TMC_REG_PWM_AUTO, &pwm_auto);
    if (err != ESP_OK) return err;

    st->scale_sum = pwm_scale & 0xFF;

    // 9-битное число со знаком: если старший (8-й) бит = 1, число отрицательное
    int16_t raw = (pwm_scale >> 16) & 0x1FF;
    st->scale_auto = (raw & 0x100) ? raw - 512 : raw;

    st->ofs_auto  = pwm_auto & 0xFF;
    st->grad_auto = (pwm_auto >> 16) & 0xFF;
    return ESP_OK;
}

#define MONITOR_LOG_PERIOD_MS 5000   // как часто писать лог

static const char *TAG_MONITOR = "monitor";

/*
    Задача monitor_log: раз в секунду читает состояние драйвера и пишет в лог.
    Только ЧИТАЕТ регистры — ничего не меняет и не обрабатывает аварии
    (это делает tmc_watchdog_task).

    UART: tmc_read() (через read_tmc_reg) сама берёт tmc_uart_mutex на время обмена,
    поэтому здесь мьютекс брать НЕ нужно (повторный захват = вечное ожидание).

    Что пишет:
    - CS_ACTUAL  — какой ток драйвер даёт сейчас (18 = IRUN, 9 = IHOLD);
    - stst       — драйвер считает, что мотор стоит (на ведении должно быть 0);
    - stealth    — 1 = StealthChop, 0 = SpreadCycle;
    - ola / olb  — драйвер не может довести ток до нужного в обмотке A / B;
    - otpw, t120..t157 — нагрев драйвера;
    - PWM_SCALE_SUM  — доля напряжения питания (255 = напряжения не хватает);
    - PWM_SCALE_AUTO — поправка регулятора (около 0 = всё точно);
    - PWM_OFS_AUTO / PWM_GRAD_AUTO — результаты автоподстройки.
*/
// Какие оси показывать в мониторе
static const axis_t MONITOR_AXES[] = { AXIS_RA, AXIS_DEC };

// Одна порция лога для оси a
static void monitor_log_axis(axis_t a) {
        uint32_t drv;
        if (tmc_read(a, TMC_REG_DRV_STATUS, &drv) != ESP_OK) {
            ESP_LOGW(TAG_MONITOR, "[%s] Не удалось прочитать DRV_STATUS (драйвер не отвечает)", AXES[a].name);
            return;
        }

        uint8_t cs_actual = (drv >> 16) & 0x1F;

        // Температура: пороги включаются по очереди, берём самый высокий
        const char *temp = "< 120 °C";
        if      (drv & DRV_STATUS_T157) temp = "> 157 °C";
        else if (drv & DRV_STATUS_T150) temp = "> 150 °C";
        else if (drv & DRV_STATUS_T143) temp = "> 143 °C";
        else if (drv & DRV_STATUS_T120) temp = "> 120 °C";

        ESP_LOGI(TAG_MONITOR,
                 "[%s] ток CS=%u (%" PRIu32 " мА) | стоит=%" PRIu32 " | %s | обрыв A=%" PRIu32 " B=%" PRIu32 " | t %s%s",
                 AXES[a].name, cs_actual, tmc_cs_to_ma(cs_actual),
                 (drv >> 31) & 1,
                 ((drv >> 30) & 1) ? "StealthChop" : "SpreadCycle",
                 (drv >> 6) & 1, (drv >> 7) & 1,
                 temp,
                 (drv & DRV_STATUS_OTPW) ? " (otpw!)" : "");

        tmc_at_state_t st;
        if (tmc_read_at_state(a, &st) != ESP_OK) {
            ESP_LOGW(TAG_MONITOR, "[%s] Не удалось прочитать PWM_SCALE / PWM_AUTO", AXES[a].name);
            return;
        }

        ESP_LOGI(TAG_MONITOR,
                 "[%s] StealthChop: напряжение %u/255%s | поправка %d | OFS_AUTO=%u GRAD_AUTO=%u",
                 AXES[a].name, st.scale_sum,
                 st.scale_sum >= 255 ? " (ПОТОЛОК: не хватает напряжения)" : "",
                 st.scale_auto, st.ofs_auto, st.grad_auto);

        // MSCNT (0x6A) — позиция в таблице микрошагов 0..1023: меняется только
        // когда до драйвера доходят импульсы STEP
        uint32_t mscnt;
        if (tmc_read(a, 0x6A, &mscnt) == ESP_OK) {
            ESP_LOGI(TAG_MONITOR, "[%s] MSCNT = %" PRIu32, AXES[a].name, mscnt & 0x3FF);
        }
}

void monitor_log_task(void* args) {
    while (true) {
        vTaskDelay(pdMS_TO_TICKS(MONITOR_LOG_PERIOD_MS));

        for (axis_t a : MONITOR_AXES) {
            monitor_log_axis(a);
        }
    }
}

