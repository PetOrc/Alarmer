import QtQuick
import QtQuick.Controls

Rectangle {
    id: root

    signal clicked()

    property string alarmTime: "07:00"
    property string repeatDays: ""
    property bool alarmEnabled: true

    width: parent.width
    height: 120

    radius: 24

    color: "#1a2a24"

    Row {
        anchors.fill: parent

        anchors.margins: 20

        spacing: 20

        z: 2

        Column {
            spacing: 8

            anchors.verticalCenter: parent.verticalCenter

            Text {
                text: root.alarmTime

                color: "white"

                font.pixelSize: 42
            }

            Text {
                text: root.repeatDays

                color: "#aaaaaa"

                font.pixelSize: 18
            }
        }

        Item {
            width: 120
            height: 1
        }

        AppSwitch {
            checked: root.alarmEnabled
        }
    }

    MouseArea {
        anchors.fill: parent

        z: 1

        onClicked: {
            root.clicked()
        }
    }
}