import QtQuick 2.12
import QtQuick.Window 2.12

// ID - must be unique
// Root Object - there can be only one

// Top Level object is the root!
Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: myimage
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/578px-Qt_logo_2016.svg.png"
        width: 150
        height: 100
        anchors.centerIn: parent

        Rectangle {
            color: "red"
            width: parent.width
            height: parent.height
            opacity: 0.5 // 50% - 0.0 - 1.0
        }
    }
}
