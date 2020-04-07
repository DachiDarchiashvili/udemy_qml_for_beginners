import QtQuick 2.0

Item {
    id: root
    width: 100
    height: 100
    property color color: "#C0C0C0"
    property color colorClicked: "green"
    property string title: "Click me"

    Rectangle {
        id: myRec
        anchors.fill: parent
        color: root.color

        Text {
            id: display
            text: root.title
            anchors.centerIn: parent
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onPressed: parent.color = root.colorClicked
            onReleased: parent.color = root.color
        }
    }
}
