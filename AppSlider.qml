import QtQuick

Item {

    id: root

    property real value: 50

    property real from: 0
    property real to: 100

    width: 320
    height: 36

    function positionToValue(position) {

        return from + (position / track.width) * (to - from)
    }

    function valueToPosition() {

        return ((value - from) / (to - from)) * track.width
    }

    Rectangle {

        id: track

        anchors.verticalCenter: parent.verticalCenter

        width: parent.width
        height: 8

        radius: 4

        color: "#33413b"
    }

    Rectangle {

        width: handle.x + handle.width / 2
        height: 8

        radius: 4

        color: "#4CAF50"

        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {

        id: handle

        width: 28
        height: 28

        radius: width / 2

        color: "white"

        border.color: "#4CAF50"
        border.width: 3

        y: (parent.height - height) / 2

        x: root.valueToPosition() - width / 2

        Behavior on x {
            NumberAnimation {
                duration: 80
            }
        }

        MouseArea {

            anchors.fill: parent

            drag.target: parent

            drag.axis: Drag.XAxis

            drag.minimumX: -width / 2
            drag.maximumX: track.width - width / 2

            onPositionChanged: {

                root.value = root.positionToValue(
                    parent.x + width / 2
                )

                root.valueChanged(root.value)
            }
        }
    }
}