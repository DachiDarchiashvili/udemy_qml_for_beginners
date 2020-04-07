import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rectOne
        width: 100
        height: 100
        x: 50
        y: 100

        color: inputHandlerOne.pressed ? "red" : "blue"

        TapHandler {
            id: inputHandlerOne
        }
    }

    Rectangle {
        id: rectTwo
        width: 100
        height: 100
        x: 200
        y: 100

        color: inputHandlerTwo.pressed ? "red" : "blue"

        TapHandler {
            id: inputHandlerTwo
        }
    }
}
