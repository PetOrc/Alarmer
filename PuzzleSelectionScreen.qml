import QtQuick
import QtQuick.Controls

Page {

    id: root

    property var stackView

    property string selectedMode: "Провести кнопку"

    background: Rectangle {

        color: "#101814"
    }

    Flickable {

        anchors.fill: parent

        contentWidth: width
        contentHeight: contentColumn.height + 40

        Column {

            id: contentColumn

            width: parent.width - 32

            anchors.horizontalCenter: parent.horizontalCenter

            spacing: 12

            AppTopBar {

                title: "Способ выключения"

                stackView: root.stackView
            }

            PuzzleModeItem {

                modeName: "Провести кнопку"

                description:
                "Стандартное выключение будильника"

                selected:
                root.selectedMode === modeName

                onClicked:
                root.selectedMode = modeName
            }

            PuzzleModeItem {

                modeName: "Пинкод"

                description:
                "Введите случайно сгенерированный код"

                selected:
                root.selectedMode === modeName

                onClicked:
                root.selectedMode = modeName
            }

            PuzzleModeItem {

                modeName: "Математика"

                description:
                "Решите три случайных примера подряд"

                selected:
                root.selectedMode === modeName

                onClicked:
                root.selectedMode = modeName
            }

            PuzzleModeItem {

                modeName: "Найди цвет"

                description:
                "Нажмите на указанный цвет"

                selected:
                root.selectedMode === modeName

                onClicked:
                root.selectedMode = modeName
            }

            PuzzleModeItem {

                modeName: "Повтори последовательность"

                description:
                "Запомните и повторите последовательность цветов"

                selected:
                root.selectedMode === modeName

                onClicked:
                root.selectedMode = modeName
            }
        }
    }
}