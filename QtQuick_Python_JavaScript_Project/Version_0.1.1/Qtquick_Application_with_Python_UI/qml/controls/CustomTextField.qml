import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15


textField{

    id: TextEdit

    // CUSTOM PROPERTIES FOR COLOR
    property color colorDefult: "#282c34"
    property color colorOnFocus: "#242831"
    property color coloMouseOver: "#2B2F38"

    QtObject{
        id: internal

        property var dynamicColor: if(textField.focus){
                                       textField.hovered ? colorOnFocus : colorDefult
                                   }else{
                                       textField.hovered ? colorMouseOver : colorDefult
                                   }



    }

    implicitWidth: 300
    implicitHeight: 40
    placeholderText: qsTr("Type SomeThing")
    color: "#ffffff"
    background: Rectangle{
        color: internal.dynamicColor
        radius: 10
    }

    selectByMouse: true
    selectedTextColor: "#ffffff"
    selectionColor: "#ff007f"
    placeholderTextColor: "#81848c"

}
