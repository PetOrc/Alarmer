import QtQuick
import QtQuick.Controls

Rectangle {

    id: root

    signal clicked()

    property string buttonText: "+"

    width: 64
    height: 64

    radius: width / 2

    color: "#1a2a24"

    border.color: "#2d453b"
    border.width: 2

    Text {
        anchors.centerIn: parent

        text: root.buttonText

        color: "white"

        font.pixelSize: 34

        font.bold: true
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            root.clicked()
        }
    }
}