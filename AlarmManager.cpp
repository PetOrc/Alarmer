#include "AlarmManager.h"

AlarmManager::AlarmManager(QObject *parent)
    : QObject(parent),
    m_nextId(1)
{
    createAlarm("07:30", "ПН ВТ СР ЧТ ПТ");
    createAlarm("09:00", "СБ ВС");
}

AlarmModel *AlarmManager::model()
{
    return &m_model;
}

void AlarmManager::createAlarm(
    const QString &timeString,
    const QString &repeatDays
    )
{
    Alarm alarm;

    alarm.id = m_nextId++;

    alarm.time = QTime::fromString(timeString, "HH:mm");

    alarm.repeatDays = repeatDays;

    m_model.addAlarm(alarm);
}