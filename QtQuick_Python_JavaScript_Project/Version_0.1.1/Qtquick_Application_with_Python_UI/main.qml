import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import "qml/controls"

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    CustomBtn{

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

    }
}