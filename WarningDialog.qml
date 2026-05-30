import QtQuick
import QtQuick.Controls

Popup {

    id: root

    width: 340
    height: 220

    modal: true

    closePolicy: Popup.NoAutoClose

    background: Rectangle {

        radius: 20

        color: "#1a2a24"
    }

    Column {

        anchors.fill: parent

        anchors.margins: 20

        spacing: 20

        Text {

            text:
            "Вы действительно хотите отключить обязательное прохождение проверки?"

            color: "white"

            wrapMode: Text.WordWrap

            font.pixelSize: 18
        }

        Rectangle {

            width: parent.width
            height: 52

            radius: 16

            color: "#3d6b57"

            Text {

                anchors.centerIn: parent

                text: "Понятно"

                color: "white"

                font.pixelSize: 18
            }

            MouseArea {

                anchors.fill: parent

                onClicked: root.close()
            }
        }
    }
}