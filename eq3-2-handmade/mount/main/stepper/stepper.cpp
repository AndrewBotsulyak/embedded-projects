#include "stepper.h"

#include <cstdlib>
#include <inttypes.h>

#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "FastAccelStepper.h"

#include "axis-config.h"
#include "tmc-driver.h"

#include <atomic>

static const char *TAG = "stepper";

static FastAccelStepperEngine engine;

// Мотор каждой оси (nullptr — ось не подключена)
static FastAccelStepper *steppers[AXIS_COUNT] = {};

// Какие оси подключать
static const axis_t STEPPER_AXES[] = { AXIS_RA, AXIS_DEC };

// Мотор оси a; если ось не подключена — лог и nullptr
static FastAccelStepper *axis_stepper(axis_t a) {
    if (steppers[a] == nullptr) {
        ESP_LOGE(TAG, "[%s] мотор оси не подключён (нет в STEPPER_AXES)", AXES[a].name);
    }
    return steppers[a];
}

// Скорость и разгон наведения (перекладки) — от оборотов мотора оси.
// При 1/64: 12 800 × 2 = 25 600 шагов/с (2 об/с мотора), разгон 12 800 шагов/с² (до скорости за 2 с).
// С ремнём 3:1 по оси: RA (червяк 130) ≈ 1.85°/с, DEC (червяк 65) ≈ 3.7°/с.
// ⚠️ Проверить на железе: при StealthChop момент на высокой скорости падает.
static uint32_t slew_speed_hz(axis_t a) { return axis_motor_steps_per_rev(a) * 2; }
static int32_t  slew_accel(axis_t a)    { return (int32_t)(axis_motor_steps_per_rev(a)); }

/*
    Флаг «движение заблокировано».
    true  — была авария драйвера, мотор двигать нельзя;
    false — можно ехать.

    std::atomic<bool> вместо обычного bool: флаг пишет одна задача (сторож),
    а читает другая (код движения). atomic гарантирует, что читающая задача
    всегда видит последнее записанное значение.
*/
static std::atomic<bool> motion_blocked{false};

/*
    Подключить FastAccelStepper к пинам STEP и DIR.
    - engine.init() запускает фоновую задачу библиотеки, которая готовит шаги;
      сами импульсы STEP генерирует железо ESP32 (RMT/MCPWM), процессор не занят.
    - Пин EN библиотеке НЕ отдаём: драйвером управляем сами через tmc_driver_on(axis),
      иначе библиотека и наш код будут дёргать один и тот же пин.
    Вызывать до tmc_driver_on(): пока на STEP нет импульсов, мотор стоит.
*/
esp_err_t stepper_init() {
    engine.init();   // один раз на все моторы

    for (axis_t a : STEPPER_AXES) {
        FastAccelStepper *st = engine.stepperConnectToPin(AXES[a].step_pin);
        if (st == nullptr) {
            ESP_LOGE(TAG, "[%s] stepper_init: не удалось подключить мотор к пину STEP %d",
                     AXES[a].name, AXES[a].step_pin);
            return ESP_FAIL;
        }

        st->setDirectionPin(AXES[a].dir_pin);

        // Скорость в шагах (импульсах STEP) в секунду: 1 оборот мотора в секунду
        // (при 1/256 это 51 200, при 1/64 — 12 800)
        st->setSpeedInHz(axis_motor_steps_per_rev(a));
        // Разгон в шагах/с²: до 1 об/с за 1 секунду — плавно, без рывка
        st->setAcceleration(axis_motor_steps_per_rev(a));

        steppers[a] = st;
        ESP_LOGI(TAG, "[%s] stepper_init: мотор подключён, STEP = %d, DIR = %d",
                 AXES[a].name, AXES[a].step_pin, AXES[a].dir_pin);
    }

    return ESP_OK;
}

/*
    Калибровка AT#2: подбор PWM_GRAD_AUTO («добавка напряжения на скорость»).

    Что нужно драйверу (datasheet стр. 35–36):
    1. AT#1 уже прошёл: после ENN = 0 мотор стоял ≥ 130 мс на токе IRUN
       (это делает tmc_driver_on(a)).
    2. Мотор едет с ПОСТОЯННОЙ средней скоростью (обычно 60–300 об/мин),
       при которой выполняется:  1.5 × PWM_OFS_AUTO < PWM_SCALE_SUM < 4 × PWM_OFS_AUTO
       и PWM_SCALE_SUM < 255.
    3. Подстройка медленная: изменение PWM_GRAD_AUTO на 1 занимает ~8 полных шагов,
       всего обычно до ~400 полных шагов (2 оборота мотора).

    Как работает функция:
    - катаемся туда-обратно на speed_hz (мотор возвращается в исходную позицию,
      поэтому на монтировке ось не уезжает);
    - на каждом проходе ждём конца разгона и только на участке постоянной скорости
      читаем регистры: драйвер подстраивается именно там;
    - считаем калибровку законченной, когда PWM_GRAD_AUTO перестал меняться
      между двумя проходами.

    a         — ось, которую калибруем (у каждого мотора свой PWM_GRAD);
    speed_hz  — скорость в шагах/с (при 1/64: 12 800 = 1 об/с = 60 об/мин);
    max_legs  — максимум проходов туда-обратно (защита от бесконечного цикла);
    grad_out  — сюда кладётся найденный PWM_GRAD_AUTO (можно передать nullptr).

    Если мотор на монтировке: 1 оборот мотора = 2.8° по RA. Один проход при
    1 об/с длится ~6 с и занимает 4 оборота мотора: ось отходит на ~11° и возвращается.
*/
esp_err_t tmc_calibrate_at2(axis_t a, uint32_t speed_hz, uint8_t max_legs, uint8_t *grad_out) {
    FastAccelStepper *stepper = axis_stepper(a);
    if (stepper == nullptr) return ESP_ERR_INVALID_STATE;

    tmc_at_state_t st;

    // --- 0. Проверка AT#1 ---
    if (tmc_read_at_state(a, &st) != ESP_OK) {
        ESP_LOGE(TAG, "AT#2: не удалось прочитать регистры автоподстройки");
        return ESP_FAIL;
    }
    ESP_LOGI(TAG, "AT#2: старт. PWM_OFS_AUTO = %u (AT#1), PWM_GRAD_AUTO = %u",
             st.ofs_auto, st.grad_auto);
    if (st.ofs_auto == 0) {
        ESP_LOGE(TAG, "AT#2: PWM_OFS_AUTO = 0 — AT#1 не прошёл. Включи драйвер и подожди 200 мс без движения");
        return ESP_ERR_INVALID_STATE;
    }

    // --- 1. Скорость и мягкий разгон (до speed_hz за 2 с) ---
    // Резкий разгон мешает регулятору (стр. 37), поэтому разгоняемся плавно.
    stepper->setSpeedInHz(speed_hz);
    stepper->setAcceleration(speed_hz / 2);

    // Длина прохода: 2 с разгона + 2 с постоянной скорости + 2 с торможения.
    // Путь разгона до v с ускорением a: v² / (2a). При a = v/2 это v² / v = v шагов.
    // Торможение — ещё v шагов, 2 с постоянной скорости — 2v шагов. Итого 4v.
    // При 1 об/с: 4 оборота мотора за проход; 2 с постоянной скорости = 400 полных шагов,
    // этого хватает драйверу на заметную подстройку за один проход.
    int32_t leg_steps = (int32_t)(4 * speed_hz);
    int32_t start_pos = stepper->getCurrentPosition();

    int16_t prev_grad = -1;
    esp_err_t result = ESP_ERR_TIMEOUT;

    for (uint8_t leg = 0; leg < max_legs; leg++) {
        // чётный проход — вперёд, нечётный — назад, в исходную точку
        int32_t target = (leg % 2 == 0) ? start_pos + leg_steps : start_pos;
        stepper->moveTo(target);   // без ожидания: читаем регистры во время движения

        bool sampled = false;
        while (stepper->isRunning()) {
            // Читаем только на участке постоянной скорости (COAST)
            if ((stepper->rampState() & RAMP_STATE_MASK) == RAMP_STATE_COAST &&
                tmc_read_at_state(a, &st) == ESP_OK) {

                sampled = true;
                ESP_LOGI(TAG, "AT#2 проход %u: SCALE_SUM = %u, SCALE_AUTO = %d, GRAD_AUTO = %u",
                         leg + 1, st.scale_sum, st.scale_auto, st.grad_auto);

                // Проверка условий datasheet: подходит ли скорость
                if (st.scale_sum >= 255) {
                    ESP_LOGW(TAG, "AT#2: SCALE_SUM = 255 — напряжения не хватает, уменьши скорость");
                } else if (st.scale_sum <= st.ofs_auto * 3 / 2) {
                    ESP_LOGW(TAG, "AT#2: SCALE_SUM мал (≤ 1.5 × OFS_AUTO) — скорость слишком низкая, увеличь");
                } else if (st.scale_sum >= st.ofs_auto * 4) {
                    ESP_LOGW(TAG, "AT#2: SCALE_SUM велик (≥ 4 × OFS_AUTO) — скорость слишком высокая, уменьши");
                }
            }
            vTaskDelay(pdMS_TO_TICKS(200));
        }

        if (!sampled) {
            ESP_LOGW(TAG, "AT#2 проход %u: не было участка постоянной скорости — увеличь путь или уменьши разгон", leg + 1);
            continue;
        }

        // Сошлось: PWM_GRAD_AUTO не изменился (±1) с прошлого прохода
        if (prev_grad >= 0 && abs(st.grad_auto - prev_grad) <= 1) {
            ESP_LOGI(TAG, "AT#2: готово, PWM_GRAD_AUTO = %u (стабилен два прохода подряд)", st.grad_auto);
            result = ESP_OK;
            break;
        }
        prev_grad = st.grad_auto;
    }

    // --- 2. Вернуться в исходную позицию и восстановить настройки ---
    stepper->setSpeedInHz(axis_motor_steps_per_rev(a));
    stepper->setAcceleration(axis_motor_steps_per_rev(a));
    stepper->moveTo(start_pos, true);

    if (result != ESP_OK) {
        ESP_LOGW(TAG, "AT#2: за %u проходов PWM_GRAD_AUTO не стабилизировался (последнее %u)",
                 max_legs, st.grad_auto);
    }

    if (grad_out != nullptr) {
        *grad_out = st.grad_auto;
    }

    return result;
}

/*
    Аварийная остановка: СНАЧАЛА заблокировать движение, ПОТОМ остановить.
    В таком порядке код движения уже не сможет запустить новую команду
    между остановкой и установкой флага. Останавливаются ВСЕ оси.
*/
void stepper_emergency_stop() {
    motion_blocked = true;   // общий флаг: авария на любой оси блокирует обе

    // Сначала всем ЕДУЩИМ осям «стоп», потом ждём — так оси останавливаются одновременно.
    // Стоящему мотору forceStop() не вызываем: в FastAccelStepper он оставляет флажок
    // «немедленный стоп», который «съедает» следующий запуск (первое нажатие кнопки
    // после аварии не срабатывало).
    for (axis_t a : STEPPER_AXES) {
        if (steppers[a] != nullptr && steppers[a]->isRunning()) steppers[a]->forceStop();
    }
    for (axis_t a : STEPPER_AXES) {
        if (steppers[a] == nullptr) continue;
        while (steppers[a]->isRunning()) {
            vTaskDelay(pdMS_TO_TICKS(5));
        }
    }
}

// Вызывает сторож (axis_restore), когда все оси в норме
void stepper_unblock() {
    motion_blocked = false;
}

bool stepper_is_blocked() {
    return motion_blocked;
}

uint32_t stepper_slew_speed_mhz(axis_t a) {
    return slew_speed_hz(a) * 1000;
}

/*
    Крутить ось a со скоростью speed_mhz (мГц = шагов STEP в 1000 секунд):
      > 0 — вперёд (runForward), < 0 — назад (runBackward), 0 — плавный стоп.
    Не ждёт: мотор разгоняется или тормозит в фоне по рампе slew_accel.
    Если ось уже едет, новая скорость и направление применяются плавно
    (FastAccelStepper сам тормозит и разворачивается).
    Скорость больше перекладки ограничивается до неё.
    Используется автоматом в motion_task: ведение, ручное движение, правка во время ведения.
*/
esp_err_t stepper_run_mhz(axis_t a, int32_t speed_mhz) {
    FastAccelStepper *stepper = axis_stepper(a);
    if (stepper == nullptr) return ESP_ERR_INVALID_STATE;

    if (speed_mhz == 0) {
        stepper->stopMove();   // плавно, не ждёт
        return ESP_OK;
    }

    if (motion_blocked) {
        ESP_LOGW(TAG, "[%s] Движение не запущено: заблокировано (авария драйвера)", AXES[a].name);
        return ESP_ERR_INVALID_STATE;
    }

    uint32_t abs_mhz = (uint32_t)(speed_mhz > 0 ? speed_mhz : -(int64_t)speed_mhz);
    if (abs_mhz > stepper_slew_speed_mhz(a)) abs_mhz = stepper_slew_speed_mhz(a);

    if (stepper->setSpeedInMilliHz(abs_mhz) != 0) {
        ESP_LOGE(TAG, "[%s] Недопустимая скорость %" PRIu32 " мГц", AXES[a].name, abs_mhz);
        return ESP_FAIL;
    }
    stepper->setAcceleration(slew_accel(a));

    MoveResultCode res = speed_mhz > 0 ? stepper->runForward() : stepper->runBackward();
    if (res != MoveResultCode::OK) {
        ESP_LOGE(TAG, "[%s] %s: %s", AXES[a].name, speed_mhz > 0 ? "runForward" : "runBackward", toString(res));
        return ESP_FAIL;
    }
    return ESP_OK;
}

/*
    GoTo одной оси без ожидания: поехать в позицию position на скорости перекладки
    и сразу вернуться. Доехала ли ось — stepper_is_running(a).
    Ждать нельзя: пока ждём, команды из очереди motion_task, например «стоп», не обрабатываются.
*/
esp_err_t stepper_move_to_async(axis_t a, int32_t position) {
    FastAccelStepper *stepper = axis_stepper(a);
    if (stepper == nullptr) return ESP_ERR_INVALID_STATE;

    if (motion_blocked) {
        ESP_LOGW(TAG, "[%s] GoTo не запущен: движение заблокировано (авария драйвера)", AXES[a].name);
        return ESP_ERR_INVALID_STATE;
    }

    if (stepper->setSpeedInHz(slew_speed_hz(a)) != 0) {
        ESP_LOGE(TAG, "[%s] GoTo: недопустимая скорость %" PRIu32 " Гц", AXES[a].name, slew_speed_hz(a));
        return ESP_FAIL;
    }
    stepper->setAcceleration(slew_accel(a));

    MoveResultCode res = stepper->moveTo(position);
    if (res != MoveResultCode::OK) {
        ESP_LOGE(TAG, "[%s] GoTo: moveTo: %s", AXES[a].name, toString(res));
        return ESP_FAIL;
    }

    ESP_LOGI(TAG, "[%s] GoTo: %" PRId32 " → %" PRId32 " шагов",
             AXES[a].name, stepper->getCurrentPosition(), position);
    return ESP_OK;
}

bool stepper_is_running(axis_t a) {
    return steppers[a] != nullptr && steppers[a]->isRunning();
}

uint32_t stepper_current_speed_mhz(axis_t a) {
    if (steppers[a] == nullptr) return 0;
    int32_t speed = steppers[a]->getCurrentSpeedInMilliHz();
    return (uint32_t)(speed < 0 ? -speed : speed);
}

int32_t stepper_get_position(axis_t a) {
    if (steppers[a] == nullptr) return 0;
    return steppers[a]->getCurrentPosition();
}
