#include "Alarm.h"

Alarm::Alarm()
{
    id = -1;

    time = QTime(7, 0);

    enabled = true;

    volume = 50.0f;

    vibrationEnabled = true;

    snoozeToday = false;
}