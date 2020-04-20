import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: myShape
        color: "red"
        width: 200
        height: 200
        anchors.centerIn: parent

        Text {
            id: title
            text: Math.round(parent.rotation)
            anchors.centerIn: parent
            font.bold: true
            font.pointSize: 65
            color: "darkred"
        }

        RotationAnimation {
            id: animation
            target: myShape
            loops: Animation.Infinite
            from: myShape.rotation
            to: 360
            direction: RotationAnimation.Clockwise
            duration: 3000
            running: true
        }

        MouseArea {
            id: area
            anchors.fill: parent
            onClicked: {
                if (animation.paused) {
                    animation.resume()
                } else {
                    animation.pause()
                }
            }
        }
    }
}
