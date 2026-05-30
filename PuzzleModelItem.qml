import QtQuick

Rectangle {

    id: root

    property string modeName: ""
    property string description: ""

    property bool selected: false

    signal clicked()

    width: parent.width
    height: 90

    radius: 18

    color: selected ? "#3d6b57" : "#1a2a24"

    border.width: 2
    border.color: selected ? "#7fe6a7" : "#355347"

    Column {

        anchors.fill: parent
        anchors.margins: 14

        spacing: 6

        Text {

            text: root.modeName

            color: "white"

            font.pixelSize: 20
            font.bold: true
        }

        Text {

            text: root.description

            color: "#c8c8c8"

            font.pixelSize: 15

            wrapMode: Text.WordWrap
        }
    }

    MouseArea {

        anchors.fill: parent

        onClicked: root.clicked()
    }
}