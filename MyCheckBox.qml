import QtQuick 2.0
Item {
    MouseArea {
        anchors.fill: parent
        state: "unchecked"
        onClicked: if(parent.state == "checked") {
                       console.log("clicked unchecked")
                       parent.state = "unchecked";
                       parent.checked(false);

                   } else {
                       console.log("clicked checked")
                       parent.state = "checked";
                       parent.checked(true);
                   }
    }
    signal checked(bool checkValue)
}
