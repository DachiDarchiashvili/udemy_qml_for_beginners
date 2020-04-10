import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Numpad")

    Column {
        spacing: 5
        anchors.centerIn: parent

        Row {
            Text {
                id: display
                text: "1"
                font.bold: true
                font.pixelSize: 25
            }
        }

        Row {
            spacing: 5

            NumKey {
                title: "1"
                mousearea.onClicked: display.text = "1"
            }
            NumKey {
                title: "2"
                mousearea.onClicked: display.text = "2"
            }
            NumKey {
                title: "3"
                mousearea.onClicked: display.text = "3"
            }
        }

        Row {
            spacing: 5

            NumKey {
                title: "4"
                mousearea.onClicked: display.text = "4"
            }
            NumKey {
                title: "5"
                mousearea.onClicked: display.text = "5"
            }
            NumKey {
                title: "6"
                mousearea.onClicked: display.text = "6"
            }
        }

        Row {
            spacing: 5

            NumKey {
                title: "7"
                mousearea.onClicked: display.text = "7"
            }
            NumKey {
                title: "8"
                mousearea.onClicked: display.text = "8"
            }
            NumKey {
                title: "9"
                mousearea.onClicked: display.text = "9"
            }
        }

        Row {
            spacing: 5

            Item { width: 50; height: 50 }
            NumKey {
                title: "0"
                mousearea.onClicked: display.text = "0"
            }
        }

    }
}
