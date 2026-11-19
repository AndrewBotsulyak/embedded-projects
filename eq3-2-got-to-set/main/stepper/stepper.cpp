#include "stepper.h"

#include <stdio.h>

#include "FastAccelStepper.h"

#define GUARD_POLL_MS 100

// «Движок» библиотеки — общий объект, который управляет аппаратным блоком RMT
// и раздаёт каналы под моторы. Создаётся один на всю программу.
static FastAccelStepperEngine engine = FastAccelStepperEngine();
// Указатель на наш мотор. NULL — «мотор ещё не подключён»: пока stepper_init()
// не отработает, все функции ниже по этому признаку ничего не делают.
static FastAccelStepper *stepper = NULL;

// Звёздные сутки в микросекундах: 23ч 56м 04.0905с — период обращения Земли
// относительно звёзд. Именно за это время ось RA должна сделать один оборот,
// чтобы скомпенсировать вращение Земли.
#define SIDEREAL_DAY_US  86164090500ULL

uint32_t stepper_sidereal_ticks(void)
{
    // Один оборот оси RA за звёздные сутки, разложенный на AXIS1_STEPS_PER_REV
    // микрошагов. Тик — 1/16 000 000 с, поэтому микросекунды умножаются на 16.
    //
    // Округление к ближайшему, а не вниз: здесь нужна максимально близкая
    // частота, а не гарантированно меньшая. Промах в полтика при периоде
    // около 3.3 млн тиков — это 0.15 миллионной доли.

    // Числитель: длительность звёздных суток, переведённая в тики.
    uint64_t num = SIDEREAL_DAY_US * (STEPPER_TICKS_PER_S / 1000000ULL);
    // Знаменатель: сколько микрошагов в одном обороте оси RA.
    uint64_t den = AXIS1_STEPS_PER_REV;   // ведётся только RA

    // Делим «время оборота» на «число шагов» — получаем время одного шага.
    // Прибавка den/2 перед делением превращает отбрасывание дробной части
    // в честное округление к ближайшему: 3.6 станет 4, а 3.4 — 3.
    return (uint32_t)((num + den / 2) / den);
}

bool stepper_set_speed_ticks(uint32_t speed_ticks)
{
    // Мотор ещё не подключён — задавать скорость некому.
    if (stepper == NULL) {
        return false;
    }
    // Библиотека отвергает период быстрее максимальной скорости платформы
    // и медленнее ~250 млн тиков на шаг.
    // Функция возвращает 0 при успехе; всё остальное — отказ.
    if (stepper->setSpeedInTicks(speed_ticks) != 0) {
        printf("setSpeedInTicks(%lu) отвергнут\n", (unsigned long)speed_ticks);
        return false;
    }
    return true;
}

bool stepper_init(uint8_t step_pin, uint8_t dir_pin,
                  uint32_t speed_ticks, uint32_t accel_steps_s2)
{
    // Запускаем движок библиотеки: он поднимет фоновую задачу, которая
    // раз в 4 мс подкладывает команды в очередь RMT.
    engine.init();

    // Просим движок выделить аппаратный канал под пин STEP.
    // Если свободных каналов нет, вернётся NULL.
    stepper = engine.stepperConnectToPin(step_pin);
    if (stepper == NULL) {
        printf("stepperConnectToPin(%u) failed\n", step_pin);
        return false;
    }

    // Сообщаем библиотеке, каким пином задавать направление вращения.
    stepper->setDirectionPin(dir_pin);

    // Скорость и ускорение обязаны быть заданы до первого move(),
    // иначе он вернёт MOVE_ERR_SPEED_IS_UNDEFINED и мотор не тронется.
    //
    // Период в тиках, а не частота в герцах: setSpeedInHz() принимает целое
    // число шагов в секунду, а скорость ведения дробная (~4.83). Округление
    // до 5 — это 3.4% ошибки, полградуса ухода за час, объект уезжает из поля.
    if (!stepper_set_speed_ticks(speed_ticks)) {
        return false;
    }
    // Ускорение в шагах/с² — насколько плавно мотор разгоняется и тормозит.
    stepper->setAcceleration((int32_t)accel_steps_s2);
    return true;
}

bool stepper_track_sidereal(bool forward)
{
    // Мотор не подключён — вести нечем.
    if (stepper == NULL) {
        return false;
    }
    // Ставим скорость звёздного ведения, посчитанную из передаточного числа.
    if (!stepper_set_speed_ticks(stepper_sidereal_ticks())) {
        return false;
    }

    // Непрерывное движение без заданной дистанции: ведение не заканчивается,
    // пока его не остановят снаружи.
    // «forward ? A : B» — если forward истинно, выполняется A, иначе B:
    // крутим вперёд или назад в зависимости от полушария и стороны монтировки.
    return moveIsOk(forward ? stepper->runForward() : stepper->runBackward());
}

bool stepper_move_watched(int32_t steps, bool (*guard)(void))
{
    // Мотор не подключён — двигать нечем.
    if (stepper == NULL) {
        return false;
    }
    // Командуем сдвинуться на steps шагов от текущей позиции.
    // move() не ждёт окончания движения, он только ставит задачу в очередь.
    // Если библиотека отказала (скорость не задана и т.п.) — выходим.
    if (!moveIsOk(stepper->move(steps))) {
        return false;
    }

    // Пока мотор едет — сторожим. Цикл крутится, пока isRunning() истинно.
    while (stepper->isRunning()) {
        // Если сторож задан (не NULL) и он говорит «продолжать нельзя» —
        // например, пропало питание драйвера — рвём движение немедленно.
        if (guard != NULL && !guard()) {
            stepper_emergency_stop();
            return false;
        }
        // Засыпаем на 100 мс, отдавая процессор другим задачам. Шаги при этом
        // продолжают идти — их генерирует аппаратура, а не этот цикл.
        vTaskDelay(pdMS_TO_TICKS(GUARD_POLL_MS));
    }
    // Мотор остановился сам — значит доехал до цели.
    return true;
}

void stepper_emergency_stop(void)
{
    // Мотор не подключён — останавливать нечего.
    if (stepper == NULL) {
        return;
    }
    // Сбрасывает рампу, чистит очередь и обнуляет позицию. Флаг ignore_commands,
    // который при этом взводится, снимается автоматически на следующем move().
    stepper->forceStopAndNewPosition(0);
}

bool stepper_is_running(void)
{
    // Едет, только если мотор вообще подключён И библиотека говорит, что он
    // в движении. «&&» проверяет слева направо: при stepper == NULL вторая
    // часть даже не выполнится, поэтому обращения к пустому указателю не будет.
    return stepper != NULL && stepper->isRunning();
}
