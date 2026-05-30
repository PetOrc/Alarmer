#pragma once

#include <QString>
#include <QTime>

class Alarm
{
public:
    Alarm();

    int id;

    QTime time;

    bool enabled;

    QString melodyId;

    QString puzzleMode;

    float volume;

    bool vibrationEnabled;

    bool snoozeToday;

    QString repeatDays;
};