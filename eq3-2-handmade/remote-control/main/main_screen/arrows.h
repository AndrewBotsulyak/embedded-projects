#ifndef ARROWS_H
#define ARROWS_H

#include "lx200_format.h"

// Стрелки на главном экране: ручное движение монтировки.
//
//   нажал      :R?#  :M?#        скорость + движение (монтировка едет с той скоростью,
//                                 что на экране пульта, даже после её перезагрузки)
//   держу      :M?#  :M?# ...    повтор каждые ARROWS_REPEAT_MS — защита от потери связи:
//                                 монтировка остановится сама, если повторы пропали
//   отпустил   :Q?#
//
// Только для задачи main_screen: вызывать только из неё.

#define ARROWS_REPEAT_MS 200

void arrows_press(lx200_dir_t dir, lx200_rate_t rate);

// Отпустить одну стрелку. false — она не была нажата (ничего не отправлено)
bool arrows_release(lx200_dir_t dir);

// Отпустить все зажатые стрелки (:Q?# для каждой). false — ни одна не была нажата
bool arrows_release_all();

// Забыть зажатые стрелки без отправки: после :Q# монтировка уже стоит
void arrows_forget_all();

bool arrows_is_held(lx200_dir_t dir);
bool arrows_any_held();

// Повторить :M?# для зажатых стрелок, если с прошлой отправки прошло ARROWS_REPEAT_MS.
// Вызывать в цикле task_main_screen после каждого сообщения и по таймауту очереди
void arrows_repeat();

#endif // ARROWS_H
