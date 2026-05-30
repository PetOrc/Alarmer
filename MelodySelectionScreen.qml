import QtQuick
import QtQuick.Controls

Page {

    id: root

    property string selectedMelody: "Classic Alarm"

    Rectangle {

        anchors.fill: parent

        color: "#101814"
    }

    Flickable {

        anchors.fill: parent

        contentWidth: width
        contentHeight: contentColumn.height + 40

        Column {

            id: contentColumn

            width: parent.width

            spacing: 16

            anchors.margins: 16

            AppTopBar {

                title: "Выбор мелодии"
            }

            ExpandableSection {

                width: parent.width

                title: "Мелодии"

                expanded: true

                MelodyItem {

                    melodyName: "Classic Alarm"

                    selected: root.selectedMelody === melodyName

                    onClicked: root.selectedMelody = melodyName
                }

                MelodyItem {

                    melodyName: "Digital Bell"

                    selected: root.selectedMelody === melodyName

                    onClicked: root.selectedMelody = melodyName
                }

                MelodyItem {

                    melodyName: "Morning Light"

                    selected: root.selectedMelody === melodyName

                    onClicked: root.selectedMelody = melodyName
                }

                AppSettingsTile {

                    title: "Добавить мелодию"

                    subtitle: "Выбрать аудиофайл"

                    onClicked: {

                        console.log("Открыть FileDialog")
                    }
                }
            }

            ExpandableSection {

                width: parent.width

                title: "Плейлисты"

                expanded: false

                AppSettingsTile {

                    title: "Создать плейлист"

                    subtitle: "Новый список воспроизведения"

                    onClicked: {

                        console.log("Создать плейлист")
                    }
                }
            }
        }
    }
}