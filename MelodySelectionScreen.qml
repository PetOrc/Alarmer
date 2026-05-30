import QtQuick
import QtQuick.Controls

Page {
    id: root

    property var stackView
    property int currentPuzzleMode: 0
    property var onSelected

    background: Rectangle {
        color: "#0f1a16"
    }

    AppTopBar {
        id: topBar
        title: "Выбор головоломки"
        stackView: root.stackView
    }

    Column {
        anchors.top: topBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 16
        spacing: 12

        // Вариант 1: Без головоломки
        AppSettingsTile {
            title: "Выключить как обычно"
            description: "Без дополнительных заданий"
            onClicked: {
                if (root.onSelected) root.onSelected(0)
                if (root.stackView) root.stackView.pop()
            }
        }

        // Вариант 2: Математическая задача
        AppSettingsTile {
            title: "Математическая задача"
            description: "Решите простой пример"
            onClicked: {
                if (root.onSelected) root.onSelected(1)
                if (root.stackView) root.stackView.pop()
            }
        }

        // Вариант 3: Тряска телефона
        AppSettingsTile {
            title: "Тряска телефона"
            description: "Потрясите устройство"
            onClicked: {
                if (root.onSelected) root.onSelected(2)
                if (root.stackView) root.stackView.pop()
            }
        }
    }
}