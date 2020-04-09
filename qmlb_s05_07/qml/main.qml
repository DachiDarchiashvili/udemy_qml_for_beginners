import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MyShape {
        id: shapeCentral
        anchors.centerIn: parent
        text: "Center"

        Rectangle {
            width: 25
            height: 25
            color: "pink"
            // anchors.centerIn: parent
            // anchors.fill: parent
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
    }

    MyShape {
        id: shapeTop
        text: "Top"
        color: "green"
        anchors.bottom: shapeCentral.top
        anchors.left: shapeCentral.left
    }

    MyShape {
        id: shapeBottom
        text: "Bottom"
        color: "blue"
        anchors.top: shapeCentral.bottom
        anchors.left: shapeCentral.left
    }

    MyShape {
        id: shapeLeft
        text: "Left"
        color: "red"
        anchors.top: shapeCentral.top
        anchors.right: shapeCentral.left
    }

    MyShape {
        id: shapeRight
        text: "Right"
        color: "yellow"
        anchors.top: shapeCentral.top
        anchors.left: shapeCentral.right
    }
}
