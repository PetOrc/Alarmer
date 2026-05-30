import QtQuick

Rectangle {

    id: root

    property bool checked: true

    signal toggled(bool value)

    width: 72
    height: 40

    radius: height / 2

    color: checked
           ? "#4CAF50"
           : "#4a4a4a"

    Behavior on color {
        ColorAnimation {
            duration: 150
        }
    }

    Rectangle {

        width: 32
        height: 32

        radius: width / 2

        color: "white"

        anchors.verticalCenter: parent.verticalCenter

        x: checked
           ? parent.width - width - 4
           : 4

        Behavior on x {
            NumberAnimation {
                duration: 150
            }
        }
    }

    MouseArea {

        anchors.fill: parent

        onClicked: {

            root.checked = !root.checked

            root.toggled(root.checked)
        }
    }
}