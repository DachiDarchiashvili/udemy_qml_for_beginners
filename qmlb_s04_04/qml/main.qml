import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text {
        id: myText
        text: qsTr("<html><b>Hello</b> <i><font color='green'>World!</font></i><br>
<font color='#c0c0c0'>this is a test</font><br>
<a href='https://www.google.com'>my link</a></html>")
        anchors.centerIn: parent
        font.pointSize: 35
//        font.bold: false
        font.italic: false
        color: "red"
        linkColor: "blue"

        onLinkHovered: {
            console.log("Hover: " + link)
            if (link) {
                myText.font.bold = true
            } else {
                myText.font.bold = false
            }
        }

        onLinkActivated: Qt.openUrlExternally(link)
    }
}
