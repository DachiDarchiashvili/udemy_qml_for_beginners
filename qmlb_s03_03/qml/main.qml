import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: name
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/578px-Qt_logo_2016.svg.png"
        width: 150
        height: 100
        opacity: 0.25
        anchors.centerIn: parent
    }

    TextInput {
        id: myInput
        text: "Hello World"
        anchors.centerIn: parent
        font.pixelSize: 25
    }

    Text {
        id: myText
        text: myInput.text
        font.pixelSize: 25
    }
}
