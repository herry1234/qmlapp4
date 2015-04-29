import QtQuick 2.0

Rectangle {
    border.color: "green"
    color: "white"
    radius: 4; smooth: true
    property string text: textinput.text
    TextInput {
        id: textinput
        anchors.fill: parent
        anchors.margins: 3
        text: "Pls Enter Text:.."
        color: focus? "black": "grey"
        onTextChanged: console.log("Text changed" + text)
    }
}

