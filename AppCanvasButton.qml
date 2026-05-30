import QtQuick

Rectangle {

    id: root

    signal clicked()

    property string iconType: "plus"

    width: 58
    height: 58

    radius: width / 2

    color: "#1f312b"

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

            if (root.iconType === "plus") {

                ctx.moveTo(width * 0.5, height * 0.28)
                ctx.lineTo(width * 0.5, height * 0.72)

                ctx.moveTo(width * 0.28, height * 0.5)
                ctx.lineTo(width * 0.72, height * 0.5)
            }

            else if (root.iconType === "back") {

                ctx.moveTo(width * 0.62, height * 0.28)
                ctx.lineTo(width * 0.38, height * 0.5)
                ctx.lineTo(width * 0.62, height * 0.72)
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