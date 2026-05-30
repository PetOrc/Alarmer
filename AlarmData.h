#ifndef ALARMDATA_H
#define ALARMDATA_H

#include <QString>

struct AlarmData
{
    QString time;
    QString repeatDays;

    bool enabled = true;
};

#endif // ALARMDATA_H