import QtQuick 2.0

Item {
    id: root
    property string title: ""
    property alias mousearea: mousearea
    property color normalColor: "#2980b9"
    property color hoverColor: "#3498db"
    property color clickColor: "#bdc3c7"
    width: 50
    height: 50

    Rectangle {
        id: myRec
        anchors.fill: parent
        color: root.normalColor

        Text {
            id: title
            text: root.title
            anchors.centerIn: parent
        }
    }

    MouseArea {
        id: mousearea
        anchors.fill: parent
        hoverEnabled: true

        onEntered: myRec.color = root.hoverColor
        onExited: myRec.color = root.normalColor

        onPressed: myRec.color = root.clickColor
        onReleased: myRec.color = root.hoverColor
    }
}
