#include "AlarmModel.h"

AlarmModel::AlarmModel(QObject *parent)
    : QAbstractListModel(parent)
{
    addAlarm("07:30", "ПН ВТ СР ЧТ ПТ");
    addAlarm("09:00", "СБ ВС");
}

int AlarmModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)

    return m_alarms.count();
}

QVariant AlarmModel::data(const QModelIndex &index,
                          int role) const
{
    if (!index.isValid())
        return QVariant();

    const AlarmData &alarm = m_alarms[index.row()];

    switch (role)
    {
    case TimeRole:
        return alarm.time;

    case RepeatDaysRole:
        return alarm.repeatDays;

    case EnabledRole:
        return alarm.enabled;
    }

    return QVariant();
}

QHash<int, QByteArray> AlarmModel::roleNames() const
{
    return {
        { TimeRole, "time" },
        { RepeatDaysRole, "repeatDays" },
        { EnabledRole, "enabled" }
    };
}

void AlarmModel::addAlarm(const QString &time,
                          const QString &repeatDays)
{
    beginInsertRows(QModelIndex(),
                    rowCount(),
                    rowCount());

    AlarmData alarm;

    alarm.time = time;
    alarm.repeatDays = repeatDays;

    m_alarms.append(alarm);

    endInsertRows();
}