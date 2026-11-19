#include "tmc-error.h"

#include <inttypes.h>

#include "esp_err.h"
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/idf_additions.h"
#include "freertos/task.h"

#include "stepper.h"
#include "tmc-driver.h"
#include "tmc-err-codes.h"
#include "tmc-regs.h"
#include "tmc-uart.h"

#define TMC_WATCHDOG_TASK_DELAY_MS 100

// Тег лога со своим именем оси, чтобы сразу было видно, какой драйвер в аварии
static const char* const WD_TAG[AXIS_COUNT] = { "tmc-watchdog RA", "tmc-watchdog DEC" };

// Состояние аварии — у каждой оси своё
static tmc_fault_t fault[AXIS_COUNT] = {};   // {} = FAULT_NONE для всех осей

// Сколько раз подряд ответ пришёл с плохим CRC — у каждой оси свой счётчик.
// Одиночная ошибка CRC — помеха, не авария: просто читаем ещё раз на следующем цикле.
#define TMC_WATCHDOG_CRC_ERR_LIMIT 5   // × 100 мс = 0.5 с подряд → считаем аварией
static uint8_t crc_err_count[AXIS_COUNT] = {};


// Какие оси проверяет сторож — включаются через tmc_watchdog_watch()
// только для успешно настроенных драйверов.
static bool watched[AXIS_COUNT] = {};

void tmc_watchdog_watch(axis_t a) {
    watched[a] = true;
}

// Сообщение «не отвечают все драйверы» пишем один раз, а не каждые 100 мс
static bool all_no_response_logged = false;

// Все проверяемые оси без аварий?
static bool all_watched_axes_ok() {
    for (int i = 0; i < AXIS_COUNT; i++) {
        if (watched[i] && fault[i] != FAULT_NONE) return false;
    }
    return true;
}

/*
    ЕДИНСТВЕННОЕ место, где ось включается обратно после аварии.
    was_reset — драйвер перезагружался (GSTAT.reset = 1): его регистры стали заводскими,
    поэтому сначала настроить заново, иначе мотор включился бы с заводскими токами.
    Если настройка не удалась — ось остаётся в FAULT_RESET, сторож повторит через 100 мс.
*/
static void axis_restore(axis_t a, bool was_reset) {
    if (was_reset) {
        // Запомнить ДО настройки: шаг 2 стирает флаг reset в GSTAT, и если настройка
        // упадёт на шаге 3..11, по GSTAT уже не будет видно, что её нужно повторить
        fault[a] = FAULT_RESET;

        esp_err_t err = initialize_tmc_driver(a);   // внутри шаг 0: ENN = 1
        if (err != ESP_OK) {
            ESP_LOGE(WD_TAG[a], "Перенастройка не удалась (%s), повторю через %d мс",
                     tmc_err_to_name(err), TMC_WATCHDOG_TASK_DELAY_MS);
            return;
        }
        tmc_overheat_reset(a);
    }

    tmc_driver_on(a);   // ENN = 0 + 200 мс (AT#1)
    fault[a] = FAULT_NONE;
    ESP_LOGI(WD_TAG[a], "Ось включена%s", was_reset ? " (после перенастройки)" : "");
    
    if (all_watched_axes_ok()) {
        stepper_unblock();
        ESP_LOGW(WD_TAG[a], "Все оси в норме — движение разрешено. Ведение остановлено, "
                            "позиция могла сбиться: проверить наведение и запустить ведение (motion_track)");
    } else {
        ESP_LOGW(WD_TAG[a], "Движение остаётся заблокированным: другая ось ещё в аварии");
    }
}

/*
    ЕДИНСТВЕННОЕ место, где ось выключается из-за аварии.
    Порядок важен:
      1. stepper_emergency_stop() — флаг «движение запрещено» + forceStop ВСЕХ осей,
         ждёт, пока импульсы STEP прекратятся;
      2. ENN = 1 — обесточить мотор оси a;
      3. запомнить причину — по ней сторож решает, когда и как включать обратно.
*/
static void axis_shutdown(axis_t a, tmc_fault_t reason) {
    stepper_emergency_stop();
    tmc_driver_off(a);
    fault[a] = reason;

    ESP_LOGE(WD_TAG[a], "Ось выключена, все оси остановлены, движение заблокировано");
}

/*
    Новая авария по GSTAT (uv_cp или drv_err): сначала выключить, потом выяснять причину.
*/
static void handle_new_fault(axis_t a, uint32_t gstat) {
    if (gstat & GSTAT_UV_CP) {
        axis_shutdown(a, FAULT_UNDERVOLTAGE);
        ESP_LOGE(WD_TAG[a], "АВАРИЯ: низкое напряжение питания мотора VS (uv_cp) — жду восстановления");
        return;
    }

    // drv_err: перегрев или замыкание — различить можно только по DRV_STATUS
    uint32_t drv;
    esp_err_t err = tmc_read(a, TMC_REG_DRV_STATUS, &drv);

    if (err == ESP_OK && (drv & DRV_STATUS_OT)) {
        axis_shutdown(a, FAULT_OVERHEAT);
        ESP_LOGE(WD_TAG[a], "АВАРИЯ: перегрев драйвера (ot, 143 °C) — жду остывания");
    } else {
        // замыкание, или причину не узнать — считаем худшее: включать обратно автоматически нельзя
        axis_shutdown(a, FAULT_SHORT);
        ESP_LOGE(WD_TAG[a], "АВАРИЯ: замыкание в проводах мотора%s — проверь провода и перезапусти ESP",
                 err == ESP_OK ? "" : " (DRV_STATUS не прочитан)");
    }

    if (err == ESP_OK) tmc_log_drv_status(a);   // подробности: какая фаза, какая температура
}


// FAULT_NONE: ось работает — ищем новые аварии
static void check_running(axis_t a, uint32_t gstat) {
    if (gstat & (GSTAT_DRV_ERR | GSTAT_UV_CP)) {
        handle_new_fault(a, gstat);
        return;
    }

    if (gstat & GSTAT_RESET) {
        axis_shutdown(a, FAULT_RESET);
        ESP_LOGE(WD_TAG[a], "Драйвер перезагрузился (reset), настройки стали заводскими — настраиваю заново");
        axis_restore(a, true);
        return;
    }

    esp_err_t err = tmc_check_overheat(a);
    if (err != ESP_OK) {
        ESP_LOGW(WD_TAG[a], "Проверка перегрева не удалась (%s), повторю", tmc_err_to_name(err));
    }
}

// FAULT_NO_RESPONSE: раз мы здесь, GSTAT прочитан — связь вернулась
static void check_no_response(axis_t a, uint32_t gstat) {
    ESP_LOGI(WD_TAG[a], "Связь с драйвером восстановлена");

    if (gstat & (GSTAT_DRV_ERR | GSTAT_UV_CP)) {   // связь есть, но драйвер в аварии
        handle_new_fault(a, gstat);
        return;
    }
    axis_restore(a, gstat & GSTAT_RESET);
}

// FAULT_OVERHEAT: ждём, пока остынет ниже 120 °C
static void check_overheat_fault(axis_t a, uint32_t gstat) {
    uint32_t drv;
    esp_err_t err = tmc_read(a, TMC_REG_DRV_STATUS, &drv);
    if (err != ESP_OK) {
        ESP_LOGE(WD_TAG[a], "Перегрев: не удалось прочитать DRV_STATUS (%s), повторю", tmc_err_to_name(err));
        return;
    }

    if (drv & (DRV_STATUS_OT | DRV_STATUS_OTPW)) return;   // ещё горячий

    // drv_err «защёлкнут» и сам не сбросится. Если не сбросить —
    // сторож увидит «новую» аварию, а шаг 2 настройки вернёт ошибку
    err = tmc_write(a, TMC_REG_GSTAT, GSTAT_DRV_ERR);
    if (err != ESP_OK) {
        ESP_LOGE(WD_TAG[a], "Не удалось сбросить drv_err (%s), повторю", tmc_err_to_name(err));
        return;
    }

    ESP_LOGI(WD_TAG[a], "Драйвер остыл ниже 120 °C");
    axis_restore(a, gstat & GSTAT_RESET);
}

// FAULT_UNDERVOLTAGE: uv_cp не защёлкивается — пропадает сам, когда напряжение вернулось
static void check_undervoltage_fault(axis_t a, uint32_t gstat) {
    if (gstat & GSTAT_UV_CP) return;   // ещё низкое — ждём

    ESP_LOGI(WD_TAG[a], "Питание мотора VS восстановлено");
    axis_restore(a, gstat & GSTAT_RESET);
}

/*
    Проверка одной оси: прочитать GSTAT и передать его проверке текущего состояния.
    Логика и порядок проверок — info/tmc-error.md.
*/
static void watchdog_check_axis(axis_t a) {
    uint32_t gstat;
    
    esp_err_t err = tmc_read(a, TMC_REG_GSTAT, &gstat);

    // Помеха: ответ пришёл, но испорчен. Пропускаем цикл, пока это не повторилось много раз подряд
    if (err == ESP_ERR_TMC_INVALID_CRC) {
        crc_err_count[a]++;
        if (crc_err_count[a] < TMC_WATCHDOG_CRC_ERR_LIMIT) {
            ESP_LOGW(WD_TAG[a], "Ответ GSTAT с ошибкой CRC (%u подряд) — помеха, читаю ещё раз", crc_err_count[a]);
            return;
        }
        // CRC не сходится 0.5 с подряд — связь испорчена, дальше как «не отвечает»
    }

    if (err != ESP_OK) {
        if (fault[a] == FAULT_NONE) {
            axis_shutdown(a, FAULT_NO_RESPONSE);
            ESP_LOGE(WD_TAG[a], "АВАРИЯ: драйвер не отвечает по UART (%s) — нет питания мотора VS или обрыв провода",
                     tmc_err_to_name(err));
        }
        return;   // gstat не прочитан — проверять нечего, ждём следующего цикла
    }

    crc_err_count[a] = 0;   // ответ нормальный — счётчик помех с начала

    // Каждое состояние проверяет только своё: «ушла ли причина?» или «нет ли новой аварии?»
    switch (fault[a]) {
        case FAULT_NONE:         check_running(a, gstat);            break;
        case FAULT_NO_RESPONSE:  check_no_response(a, gstat);        break;
        case FAULT_OVERHEAT:     check_overheat_fault(a, gstat);     break;
        case FAULT_UNDERVOLTAGE: check_undervoltage_fault(a, gstat); break;
        case FAULT_RESET:        axis_restore(a, true);              break;   // повторить перенастройку
        case FAULT_SHORT:                                            break;   // ждём человека: провода + перезапуск ESP
    }
}

/*
    Задача-сторож: каждые TMC_WATCHDOG_TASK_DELAY_MS мс проверяет драйверы осей.

    Как это работает во FreeRTOS:
    - задача — это обычная функция с бесконечным циклом while (true);
    - она работает «параллельно» с app_main: FreeRTOS сам переключает процессор между ними;
    - vTaskDelay(...) — «усни на 100 мс»: пока задача спит, процессор
      свободен для других задач. Без vTaskDelay задача заняла бы процессор целиком.
    - args — параметр, который можно передать при запуске; здесь не используется.
*/
void tmc_watchdog_task(void* args) {
    while (true) {
        vTaskDelay(pdMS_TO_TICKS(TMC_WATCHDOG_TASK_DELAY_MS));

        // Политика двух осей (info/two-axes.md, шаг 4):
        // - авария на ЛЮБОЙ оси → stepper_emergency_stop() останавливает ВСЕ оси
        //   и блокирует движение (для наведения нужны обе оси);
        // - выключается, перенастраивается и включается обратно ТОЛЬКО драйвер
        //   сломавшейся оси — это делает watchdog_check_axis(a).
        for (int i = 0; i < AXIS_COUNT; i++) {
            axis_t a = (axis_t)i;
            if (watched[a]) {
                watchdog_check_axis(a);
            }
        }

        // Если не отвечают ВСЕ проверяемые драйверы — скорее всего пропало общее питание VS
        bool any_watched = false;
        bool all_no_response = true;
        for (int i = 0; i < AXIS_COUNT; i++) {
            if (!watched[i]) continue;
            any_watched = true;
            if (fault[i] != FAULT_NO_RESPONSE) all_no_response = false;
        }
        if (any_watched && all_no_response) {
            if (!all_no_response_logged) {
                ESP_LOGE(WD_TAG[AXIS_RA], "Не отвечают ВСЕ драйверы — вероятно, пропало общее питание моторов VS");
                all_no_response_logged = true;
            }
        } else {
            all_no_response_logged = false;
        }
    }
}
