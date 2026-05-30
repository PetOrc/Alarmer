#pragma once

#include <QObject>

#include "AlarmModel.h"

class AlarmManager : public QObject
{
    Q_OBJECT

    Q_PROPERTY(AlarmModel* model READ model CONSTANT)

public:
    explicit AlarmManager(QObject *parent = nullptr);

    AlarmModel* model();

    Q_INVOKABLE void createAlarm(
        const QString &timeString,
        const QString &repeatDays
        );

private:
    AlarmModel m_model;

    int m_nextId;
};