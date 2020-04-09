import QtQuick 2.0

Rectangle {
    id: root
    width: 100
    height: 100
    color: "gray"

    MouseArea {
        anchors.fill: parent
        drag.target: parent
        onClicked: parent.z++
    }
}
