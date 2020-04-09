import QtQuick 2.0

Item {
    id: root
    property color color: "gray"
    property string text: "title"

    width: 100
    height: 100

    Rectangle {
        anchors.fill: parent
        color: parent.color

        Text {
            text: root.text
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            drag.target: root.parent
            onClicked: root.z++
        }
    }
}
