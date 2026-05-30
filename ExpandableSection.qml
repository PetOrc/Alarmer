import QtQuick

Column {

    id: root

    property string title: ""
    property bool expanded: false

    signal toggled()

    spacing: 8

    Rectangle {

        width: parent.width
        height: 56

        radius: 18

        color: "#24352e"

        Row {

            anchors.fill: parent
            anchors.margins: 16

            spacing: 12

            Canvas {

                width: 18
                height: 18

                anchors.verticalCenter: parent.verticalCenter

                onPaint: {

                    var ctx = getContext("2d")
                    ctx.reset()

                    ctx.strokeStyle = "white"
                    ctx.lineWidth = 3

                    ctx.beginPath()

                    if (root.expanded) {

                        ctx.moveTo(3, 6)
                        ctx.lineTo(9, 12)
                        ctx.lineTo(15, 6)

                    } else {

                        ctx.moveTo(6, 3)
                        ctx.lineTo(12, 9)
                        ctx.lineTo(6, 15)
                    }

                    ctx.stroke()
                }
            }

            Text {

                anchors.verticalCenter: parent.verticalCenter

                text: root.title

                color: "white"

                font.pixelSize: 22
            }
        }

        MouseArea {

            anchors.fill: parent

            onClicked: {

                root.expanded = !root.expanded
                root.toggled()
            }
        }
    }

    Item {

        width: parent.width

        visible: root.expanded

        implicitHeight: contentColumn.implicitHeight

        Column {

            id: contentColumn

            width: parent.width

            spacing: 8
        }

        default property alias content: contentColumn.data
    }
}