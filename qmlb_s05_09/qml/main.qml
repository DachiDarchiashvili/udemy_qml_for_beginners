import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Simple Image Viewer")

    property color bgcolor: "#5A6263"
    property color buttoncolor: "green"
    property color hovercolor: "limegreen"
    property color clickcolor: "yellow"
    property var size: 100

    Rectangle {
        id: background
        color: root.buttoncolor
        width: 100
        height: parent.height

        Column {
            id: column
            anchors.fill: parent

            HoverButton {
                width: 100
                height: 50
                title.text: "Bobby 1"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed: image.source = "../resources/bobby_1.jpg"
            }

            HoverButton {
                width: 100
                height: 50
                title.text: "Bobby 2"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed: image.source = "../resources/bobby_2.jpg"
            }

            HoverButton {
                width: 100
                height: 50
                title.text: "Bobby 3"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed: image.source = "../resources/bobby_3.jpg"
            }
        }
    }

    Rectangle {
        id: rectangle
        color: root.bgcolor
        x: 100
        y: 0
        width: parent.width - x
        height: parent.height

        Image {
            id: image
            anchors.margins: 25
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/578px-Qt_logo_2016.svg.png"
        }
    }
}
