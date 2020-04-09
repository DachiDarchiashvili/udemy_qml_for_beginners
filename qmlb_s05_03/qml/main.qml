import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        spacing: 2
        anchors.centerIn: parent

        MyShape {
            color: "red"
        }

        MyShape {
            color: "blue"
        }

        MyShape {
            color: "green"
        }
    }
}
