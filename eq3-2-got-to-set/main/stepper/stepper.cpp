#include "stepper.h"

#include <stdio.h>

#include "FastAccelStepper.h"

#define GUARD_POLL_MS 100

static FastAccelStepperEngine engine = FastAccelStepperEngine();
static FastAccelStepper *stepper = NULL;

bool stepper_init(uint8_t step_pin, uint8_t dir_pin,
                  uint32_t speed_hz, uint32_t accel_steps_s2)
{
    engine.init();

    stepper = engine.stepperConnectToPin(step_pin);
    if (stepper == NULL) {
        printf("stepperConnectToPin(%u) failed\n", step_pin);
        return false;
    }

    stepper->setDirectionPin(dir_pin);

    // Скорость и ускорение обязаны быть заданы до первого move(),
    // иначе он вернёт MOVE_ERR_SPEED_IS_UNDEFINED и мотор не тронется.
    stepper->setSpeedInHz(speed_hz);
    stepper->setAcceleration((int32_t)accel_steps_s2);
    return true;
}

bool stepper_move_watched(int32_t steps, bool (*guard)(void))
{
    if (stepper == NULL) {
        return false;
    }
    if (!moveIsOk(stepper->move(steps))) {
        return false;
    }

    while (stepper->isRunning()) {
        if (guard != NULL && !guard()) {
            stepper_emergency_stop();
            return false;
        }
        vTaskDelay(pdMS_TO_TICKS(GUARD_POLL_MS));
    }
    return true;
}

void stepper_emergency_stop(void)
{
    if (stepper == NULL) {
        return;
    }
    // Сбрасывает рампу, чистит очередь и обнуляет позицию. Флаг ignore_commands,
    // который при этом взводится, снимается автоматически на следующем move().
    stepper->forceStopAndNewPosition(0);
}

bool stepper_is_running(void)
{
    return stepper != NULL && stepper->isRunning();
}
