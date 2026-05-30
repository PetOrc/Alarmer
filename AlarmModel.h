#ifndef ALARMMODEL_H
#define ALARMMODEL_H

#include <QAbstractListModel>

#include "AlarmData.h"

class AlarmModel : public QAbstractListModel
{
    Q_OBJECT

public:

    enum AlarmRoles
    {
        TimeRole = Qt::UserRole + 1,
        RepeatDaysRole,
        EnabledRole
    };

    explicit AlarmModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index,
                  int role) const override;

    QHash<int, QByteArray> roleNames() const override;

    Q_INVOKABLE void addAlarm(const QString &time,
                              const QString &repeatDays);

private:

    QList<AlarmData> m_alarms;
};

#endif // ALARMMODEL_H