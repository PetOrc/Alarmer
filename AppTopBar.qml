import QtQuick

Rectangle {

    id: root

    property string title: ""

    width: parent ? parent.width : 400
    height: 70

    radius: 20

    color: "#24352e"

    Row {

        anchors.fill: parent
        anchors.margins: 16

        spacing: 12

        Rectangle {

            width: 44
            height: 44

            radius: 22

            color: "#1a2a24"

            Canvas {

                anchors.fill: parent

                onPaint: {

                    var ctx = getContext("2d")
                    ctx.reset()

                    ctx.strokeStyle = "white"
                    ctx.lineWidth = 4
                    ctx.lineCap = "round"

                    ctx.beginPath()

                    ctx.moveTo(width * 0.65, height * 0.25)
                    ctx.lineTo(width * 0.35, height * 0.50)
                    ctx.lineTo(width * 0.65, height * 0.75)

                    ctx.stroke()
                }
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {

                    if (stackView)
                        stackView.pop()
                }
            }
        }

        Text {

            anchors.verticalCenter: parent.verticalCenter

            text: root.title

            color: "white"

            font.pixelSize: 24

            font.bold: true
        }
    }
}