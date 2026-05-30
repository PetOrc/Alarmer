import QtQuick
import QtQuick.Controls

Popup {

    id: root

    signal accepted()

    width: 340
    height: 220

    modal: true

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
            "Подтвердите действие"

            color: "white"

            font.pixelSize: 20

            wrapMode: Text.WordWrap
        }

        Row {

            spacing: 12

            Rectangle {

                width: 140
                height: 50

                radius: 14

                color: "#7d3c3c"

                Text {

                    anchors.centerIn: parent

                    text: "Отмена"

                    color: "white"
                }

                MouseArea {

                    anchors.fill: parent

                    onClicked: root.close()
                }
            }

            Rectangle {

                width: 140
                height: 50

                radius: 14

                color: "#3d6b57"

                Text {

                    anchors.centerIn: parent

                    text: "Да"

                    color: "white"
                }

                MouseArea {

                    anchors.fill: parent

                    onClicked: {

                        root.accepted()

                        root.close()
                    }
                }
            }
        }
    }
}