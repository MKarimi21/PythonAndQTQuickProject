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
//                id: gridLayout
                anchors.fill: parent
                columns: 3
                rows: 1
                anchors.leftMargin: 10
                anchors.rightMargin: 10


                CustomTextField {
                    id: textField

                    placeholderText: "Type SomeThing"   // TODO: HAVE BUG => WHY DONT READ
                    Layout.fillWidth: true


                    Keys.onEnterPressed: {
                        backend.welcomText(textField.text)

                    }
                    Keys.onReturnPressed: {
                        backend.welcomText(textField.text)
                    }
                }

                CustomButton{
                    id: btnChangeName
                    text: "Change Name"
                    Layout.maximumWidth: 200
                    Layout.fillWidth: true
                    Layout.preferredHeight: 40
                    Layout.preferredWidth: 250
                    onClicked: {
                        backend.welcomText(textField.text)
                    }

                }

                Switch{
                    id: switchHome
                    text: qsTr("Switch")
                    checked: true
                    Layout.preferredHeight: 40
                    Layout.preferredWidth: 68
                    // CHANGE SHOW OR HIDE FRAME
                    onToggled: {
                        backend.showHideRectangle(switchHome.checked)
                    }


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

            Label{
                id: labelTextName
                y: 8
                height: 25
                color: "#5c667d"
                text: qsTr("Welcom")
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                font.pointSize: 14

            }

            Label{
                id: labelData
                y: 31
                height: 25
                color: "#55aaff"
                text: qsTr("Data")
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                font.pointSize: 12

            }


            ScrollView{
                id: scrollView
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: labelData.bottom
                anchors.bottom: parent.bottom
                clip: true
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10

                Text{
                    id: textHome
                    color: "#a9b2c8"
                    text: "SALAM"       // TODO: Edit Page
                    anchors.fill: parent
                    font.pixelSize: 12
                    textFormat: Text.RichText
                }


            }
        }


    Connections{
        target: backend

        function onSetName(name){
            labelTextName.text = name

        }

        function onPrintItem(time){
            labelDate.text = time

        }

        function onIsVisible(isVisible){
            rectangleVisible.visible = isVisible
        }

    }


    }



}

/*##^##
Designer {
    D{i:0;autoSize:true;height:473;width:980}
}
##^##*/
