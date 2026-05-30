import QtQuick

Rectangle {

    id: root

    signal clicked()

    property bool up: true

    width: 48
    height: 48

    radius: width / 2

    color: "#24352e"

    border.color: "#355347"
    border.width: 2

    Canvas {

        anchors.fill: parent

        onPaint: {

            var ctx = getContext("2d")

            ctx.reset()

            ctx.strokeStyle = "white"
            ctx.lineWidth = 4
            ctx.lineCap = "round"

            ctx.beginPath()

            if (root.up) {

                ctx.moveTo(width * 0.3, height * 0.6)
                ctx.lineTo(width * 0.5, height * 0.4)
                ctx.lineTo(width * 0.7, height * 0.6)

            } else {

                ctx.moveTo(width * 0.3, height * 0.4)
                ctx.lineTo(width * 0.5, height * 0.6)
                ctx.lineTo(width * 0.7, height * 0.4)
            }

            ctx.stroke()
        }
    }

    MouseArea {

        anchors.fill: parent

        onClicked: {
            root.clicked()
        }
    }
}