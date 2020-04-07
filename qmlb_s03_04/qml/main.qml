import QtQuick 2.12
import QtQuick.Window 2.12

// X - left to right
// Y - top to bottom
// Z - depth from higher to lower (higher on the top)

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: image
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/578px-Qt_logo_2016.svg.png"
        width: 150
        height: 100
        x: 100
        y: 100
        z: 4
    }

    Rectangle {
        color: "red"
        width: 200
        height: 200
        x: 50
        y: 50
        opacity: 0.5
        z: 2
    }

    Rectangle {
        color: "blue"
        width: 200
        height: 200
        x: 150
        y: 150
        opacity: 0.5
        z: 1
    }
}
