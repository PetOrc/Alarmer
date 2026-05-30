import QtQuick

Rectangle {

    id: root

    property string melodyName: ""
    property bool selected: false

    signal clicked()

    width: parent.width
    height: 64

    radius: 16

    color: selected ? "#3d6b57" : "#1a2a24"

    Row {

        anchors.fill: parent
        anchors.margins: 16

        spacing: 12

        Text {

            text: "♪"

            color: "white"

            font.pixelSize: 24
        }

        Text {

            anchors.verticalCenter: parent.verticalCenter

            text: melodyName

            color: "white"

            font.pixelSize: 20
        }
    }

    MouseArea {

        anchors.fill: parent

        onClicked: root.clicked()
    }
}