import QtQuick

Rectangle {
    id: root

    property string title: ""
    property var stackView: null

    height: 70
    color: "#1a2a24"

    Row {
        anchors.fill: parent
        anchors.margins: 16
        spacing: 12

        BackButton {
            id: backBtn
            visible: root.stackView ? (root.stackView.depth > 1) : false
            anchors.verticalCenter: parent.verticalCenter
            onClicked: {
                if (root.stackView) {
                    root.stackView.pop()
                }
            }
        }

        Text {
            text: root.title
            color: "white"
            font.pixelSize: 24
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}