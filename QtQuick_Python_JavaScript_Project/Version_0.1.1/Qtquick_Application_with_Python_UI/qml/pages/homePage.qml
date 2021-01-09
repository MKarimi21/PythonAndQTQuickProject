import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0
import "../controls"


Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Rectangle {
            id: rectangleTop
            radius: 10
            height: 69
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 50
            anchors.leftMargin: 50
            anchors.topMargin: 40

            color: "#495163"

            GridLayout {
                id: gridLayout
                anchors.fill: parent
                columns: 3
                rows: 1
                anchors.leftMargin: 10
                anchors.rightMargin: 10


                CustomTextField {
                    id: textField

                    placeholderText: "Type Your Name"   // TODO: HAVE BUG => WHY DONT READ
                    Layout.fillWidth: true
                    Keys.onEnterPressed: {
                        backend.welcomText(textField.text)

                    }
                    Keys.onReturnPressed: {
                        backend.welcomText(textField.text)
                    }
                }

                CustomButton{

                }


            }


        }

        Rectangle {
            id: rectangleVisible
            color: "#1d2128"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangleTop.bottom
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.leftMargin: 50
            anchors.rightMargin: 50
            anchors.topMargin: 10
        }


    }



}
