import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 430
    height: 900

    visible: true

    title: "Alarmer"

    StackView {
        id: stackView

        objectName: "mainStack"

        anchors.fill: parent

        initialItem: AlarmListScreen {
            stackView: stackView
        }
    }
}