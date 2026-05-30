import QtQuick
import QtQuick.Controls

Page {
    required property StackView stackView

    property string alarmTime: "07:30"

    background: Rectangle {
        color: "#0f1115"
    }

    Column {
        anchors.fill: parent

        anchors.margins: 20

        spacing: 24

        Row {
            width: parent.width

            spacing: 20

            AppCanvasButton {

                width: 54
                height: 54

                iconType: "back"

                onClicked: {
                    stackView.pop()
                }
            }

            Text {
                text: "Настройка будильника"

                color: "white"

                font.pixelSize: 28

                anchors.verticalCenter: parent.verticalCenter
            }
        }

        TimePicker {
            width: parent.width
        }

        AppSettingsTile {

            title: "Мелодия сигнала"

            subtitle: "Classic Alarm"

            onClicked: {

            }
        }

        AppSettingsTile {

            title: "Способ выключения"

            subtitle: "Математический пример"

            onClicked: {

            }
        }

        AppSettingsTile {

            title: "Вибрация"

            showSwitch: true
            showArrow: false
        }

        Rectangle {
            width: parent.width
            height: 120

            radius: 24

            color: "#1a2a24"

            Column {
                anchors.fill: parent

                anchors.margins: 20

                spacing: 14

                Text {
                    text: "Громкость сигнала"

                    color: "white"

                    font.pixelSize: 22
                }

                AppSlider {

                    width: parent.width

                    value: 50

                    onValueChanged: {

                        volumeText.text =
                                value.toFixed(1) + " дБ"
                    }
                }

                Text {
                    id: volumeText

                    text: "50.0 дБ"

                    color: "#aaaaaa"

                    font.pixelSize: 18
                }
            }
        }
    }
}