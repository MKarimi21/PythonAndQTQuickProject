import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: window
    width: 1000
    height: 580
    visible: true
    title: qsTr("Couse")

    Rectangle {
        id: rectangle
        color: "#4182c3"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 100
        anchors.leftMargin: 100
        anchors.bottomMargin: 100
        anchors.topMargin: 100
    }
}


