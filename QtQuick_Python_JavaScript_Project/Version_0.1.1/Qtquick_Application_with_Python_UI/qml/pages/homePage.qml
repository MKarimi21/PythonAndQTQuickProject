import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Rectangle {
        id: rectangle
        color: "#e44646"
        anchors.fill: parent

        Label {
            id: label
            x: 386
            y: 265
            text: qsTr("Home Page")
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: "MS Shell Dig 2"
            font.pointSize: 16
        }
    }

}
