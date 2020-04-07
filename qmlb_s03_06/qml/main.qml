import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        anchors.centerIn: parent
        width: 100
        height: 100

        color: inputHandler.pressed ? "red" : "blue"

        TapHandler {
            id: inputHandler
        }
    }
}
