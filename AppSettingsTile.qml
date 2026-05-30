import QtQuick

Rectangle {

    id: root

    signal clicked()

    property string title: ""
    property string subtitle: ""

    property bool showArrow: true
    property bool showSwitch: false

    property bool switchChecked: true

    property string valueText: ""

    width: parent.width
    height: 92

    radius: 24

    color: "#1a2a24"

    border.color: "#24352e"
    border.width: 2

    Row {

        anchors.fill: parent

        anchors.margins: 20

        spacing: 16

        Column {

            anchors.verticalCenter: parent.verticalCenter

            spacing: 6

            Text {

                text: root.title

                color: "white"

                font.pixelSize: 22
            }

            Text {

                visible: subtitle.length > 0

                text: root.subtitle

                color: "#8fa39a"

                font.pixelSize: 16
            }
        }

        Item {
            width: parent.width
            height: 1
        }

        Text {

            visible: valueText.length > 0

            text: valueText

            color: "#8fa39a"

            font.pixelSize: 18

            anchors.verticalCenter: parent.verticalCenter
        }

        AppSwitch {

            visible: showSwitch

            checked: switchChecked

            anchors.verticalCenter: parent.verticalCenter
        }

        Canvas {

            visible: showArrow

            width: 28
            height: 28

            anchors.verticalCenter: parent.verticalCenter

            onPaint: {

                var ctx = getContext("2d")

                ctx.reset()

                ctx.strokeStyle = "#8fa39a"
                ctx.lineWidth = 3
                ctx.lineCap = "round"

                ctx.beginPath()

                ctx.moveTo(width * 0.35, height * 0.25)
                ctx.lineTo(width * 0.65, height * 0.5)
                ctx.lineTo(width * 0.35, height * 0.75)

                ctx.stroke()
            }
        }
    }

    MouseArea {

        anchors.fill: parent

        onClicked: {
            root.clicked()
        }
    }
}