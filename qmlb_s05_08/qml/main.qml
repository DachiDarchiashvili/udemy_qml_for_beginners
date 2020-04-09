import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        anchors.centerIn: parent
        width: 300
        height: 400
        color: "red"

        Rectangle {
            width: 100
            height: 100
            color: "yellow"

            // No anchor by default so anchors.margin not works
            anchors.margins: 50
            // After setting this left margin will work
            anchors.left: parent.left
            // now bottom margin works
            anchors.bottom: parent.bottom
            // drop left margin to 15
            anchors.leftMargin: 15
        }
    }
}
