import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item {
        id: root
        anchors.fill: parent
        focus: true

        Rectangle {
            id: myRect
            color: "red"
            width: 100
            height: 100
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
        }

        Keys.onRightPressed: {
            if ((myRect.x + 10) <= (root.width - myRect.width)) {
                myRect.x += 10
            }
        }
        Keys.onLeftPressed: {
            if (myRect.x > 0) {
                myRect.x -= 10
            }
        }
        Keys.onUpPressed: myRect.y -= 10
        Keys.onDownPressed: myRect.y += 10
    }
}
