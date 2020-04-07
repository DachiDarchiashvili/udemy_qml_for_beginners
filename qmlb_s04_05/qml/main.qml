import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: myArea
        color: "blue"
        width: 200
        height: 200
        anchors.centerIn: parent

        MouseArea {
            id: myMouse
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            hoverEnabled: true

            onClicked: {
                console.log("Clicked: " + mouse.button)
                if (mouse.button === Qt.LeftButton) parent.color = "green"
                else if (mouse.button === Qt.RightButton) parent.color = "red"
            }

            onDoubleClicked: console.log("Double clicked: " + mouse.button)
            onPositionChanged: console.log("Position X: " + mouseX + " Y: " + mouseY)
            onEntered: parent.color = "orange"
            onExited: parent.color = "blue"
        }
    }
}
