import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // Base for all QML objects - similar to object in python
    Item {
        id: myItem
        anchors.centerIn: parent
        width: 100
        height: 100

        Rectangle {
            color: "red"
            anchors.fill: parent
        }
    }
}
