#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "AlarmModel.h"
#include "AlarmManager.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    AlarmModel alarmModel;

    engine.rootContext()->setContextProperty(
        "alarmModel",
        &alarmModel
        );

    AlarmManager alarmManager;

    engine.rootContext()->setContextProperty(
        "alarmManager",
        &alarmManager
        );

    engine.rootContext()->setContextProperty(
        "alarmModel",
        alarmManager.model()
        );

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.loadFromModule("alarmer", "Main");

    return app.exec();
}