import QtQuick 2.0

Rectangle {
    width: 800
    height: 600
    property string myprop: "this is a rect"
    id: mainRect
    Grid {
        Text {
            property real mass: 12.823
            text: "Hello QML"
            height : 50
            font.family: "Helvetica"
            font.pixelSize: 20
            id: myText
            KeyNavigation.tab: nextInput
//            anchors.centerIn: mainRect

        }
        Rectangle{
            width: 100
            height: 50
            color: "lightblue"

        }
        Rectangle{
            width: 100
            height: 50
//            x: 0; y:50
            color: "red"
            MouseArea{
                anchors.fill: parent
                onClicked: console.log("i am been clicked")
            }

        }
        NewLineEdit{
            id: nextInput
            width: 100
            height: 50
            text: "New prop"
        }
        NewLineEditAlias{
            width: 100
            height: 50
            text: "New prop"
        }
        Rectangle {
            width: 100
            height: 50
            color: "black"
            MyCheckBox{
                anchors.fill: parent

//                anchors.horizontalCenter: parent.horizontalCenter
//                anchors.verticalCenter: parent.verticalCenter
                onChecked: checkValue ? parent.color = "red" : parent.color = "green"
            }
        }



    }


}

