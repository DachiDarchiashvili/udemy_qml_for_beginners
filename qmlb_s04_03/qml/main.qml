import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property var middle: height / 2

    Image {
        id: localImage
        source: "../resources/python_logo.png"

        width: 300
        fillMode: Image.PreserveAspectFit

        x: 300
        y: middle - 100
    }

    Image {
        id: remoteImage
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/578px-Qt_logo_2016.svg.png"

        width: 100
        fillMode: Image.PreserveAspectFit

        x: 100
        y: middle

        onProgressChanged: console.log(remoteImage.progress)
        onStatusChanged: if(remoteImage.status == Image.Ready) console.log("Remote image was loaded")
    }
}
