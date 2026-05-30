import QtQuick
import QtQuick.Controls

Page {
    required property StackView stackView

    background: Rectangle {
        color: "#0f1115"
    }

    Column {
        anchors.fill: parent

        anchors.margins: 20

        spacing: 20

        AppCanvasButton {

            iconType: "plus"

            onClicked: {

                alarmModel.addAlarm(
                    "12:00",
                    "ПН СР ПТ"
                )
            }
        }

        ListView {
            width: parent.width

            height: parent.height - 100

            spacing: 20

            model: alarmModel

            delegate: AlarmCard {

                width: ListView.view.width

                alarmTime: model.time

                repeatDays: model.repeatDays

                alarmEnabled: model.enabled

                onClicked: {

                    stackView.push(
                        "AlarmSettingsScreen.qml",
                        {
                            "alarmTime": model.time,
                            "stackView": stackView
                        }
                    )
                }
            }
        }
    }
}