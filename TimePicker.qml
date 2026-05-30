import QtQuick
import QtQuick.Controls

Rectangle {

    id: root

    property int hours: 7
    property int minutes: 30

    width: parent.width
    height: 260

    radius: 28

    color: "#1a2a24"

    function formatNumber(value) {

        return value < 10
               ? "0" + value
               : value
    }

    Row {

        anchors.centerIn: parent

        spacing: 30

        Component {

            id: numberDelegate

            Item {

                width: 120
                height: 52

                Text {

                    anchors.centerIn: parent

                    text: modelData < 10
                          ? "0" + modelData
                          : modelData

                    color: ListView.isCurrentItem
                           ? "white"
                           : "#6f8078"

                    font.pixelSize: ListView.isCurrentItem
                                    ? 52
                                    : 36

                    font.bold: ListView.isCurrentItem
                }
            }
        }

        Item {

            width: 120
            height: 220

            Rectangle {

                anchors.centerIn: parent

                width: parent.width
                height: 80

                radius: 20

                color: "#24352e"

                opacity: 0.9
            }

            ListView {

                id: hoursView

                anchors.fill: parent

                model: 24

                delegate: numberDelegate

                currentIndex: root.hours

                snapMode: ListView.SnapOneItem

                highlightRangeMode: ListView.StrictlyEnforceRange

                preferredHighlightBegin: 84
                preferredHighlightEnd: 136

                clip: true

                onCurrentIndexChanged: {
                    root.hours = currentIndex
                }
            }
        }

        Text {

            text: ":"

            color: "white"

            font.pixelSize: 58

            anchors.verticalCenter: parent.verticalCenter
        }

        Item {

            width: 120
            height: 220

            Rectangle {

                anchors.centerIn: parent

                width: parent.width
                height: 80

                radius: 20

                color: "#24352e"

                opacity: 0.9
            }

            ListView {

                id: minutesView

                anchors.fill: parent

                model: 60

                delegate: numberDelegate

                currentIndex: root.minutes

                snapMode: ListView.SnapOneItem

                highlightRangeMode: ListView.StrictlyEnforceRange

                preferredHighlightBegin: 84
                preferredHighlightEnd: 136

                clip: true

                onCurrentIndexChanged: {
                    root.minutes = currentIndex
                }
            }
        }
    }
}