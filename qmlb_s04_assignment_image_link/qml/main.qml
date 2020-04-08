import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: imageLink
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/578px-Qt_logo_2016.svg.png"
        anchors.centerIn: parent

        width: 200
        fillMode: Image.PreserveAspectFit

        Rectangle {
            id: hoverRec
            visible: false
            color: "black"
            anchors.fill: parent
            opacity: 0.25
        }

        MouseArea {
            id: myMouseArea
            hoverEnabled: true
            anchors.fill: parent

            onEntered: hoverRec.visible = true
            onExited: hoverRec.visible = false
            onClicked: Qt.openUrlExternally("https://www.qt.io/")
        }
    }
}
