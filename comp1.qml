import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Window 2.2

ApplicationWindow{

    id: window1
    visible: true
    width: 1024
    height: 600
    color: "#000000"
    opacity: 1

        SequentialAnimation on y{

            PropertyAnimation {
            target: rect1
            property: "y"
            to:398
            duration: 200
                }
            PropertyAnimation {
            target: rect2
            property: "y"
            to:398
            duration: 200
                }
            PropertyAnimation {
            target: rect3
            property: "y"
            to:398
            duration: 200
                }
            PropertyAnimation {
            target: rect4
            property: "y"
            to:398
            duration: 200
                }
            PropertyAnimation {
            target: rect5
            property: "y"
            to:398
            duration: 200
                }
        }


        Text {
            id: element1
            x: 588
            y: 11
            width: 222
            height: 56
            color: "#f9f9f9"
            text: qsTr("USER : ID")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 28
        }

        Text {
            id: element2
            x: 850
            y: 11
            width: 147
            height: 56
            color: "#f7f6f6"
            text: qsTr("0:00")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 31
        }
        Rectangle {
            id: rect1
            x: 9
            y: 300
            width: 183
            height: 159
            color: "#060606"
            radius: 20
            border.width: 3
            border.color: "#f9f9f9"
            SequentialAnimation on border.color{
                loops:Animation.Infinite
               ColorAnimation {targets:[rect1,rect2,rect3,rect4,rect5];property:"border.color";from: "red";to:"yellow"; duration:250}
               ColorAnimation {targets:[rect1,rect2,rect3,rect4,rect5];property:"border.color";from: "blue";to:"white"; duration:250}
            }


        Image {
            id: image
            x: 25
            y: 15
            width: 130
            height: 130
            fillMode: Image.PreserveAspectFit
            source: "qrc:/settings.png"
        }
        }

        Rectangle {
            id: rect2
            x: 321
            y: 300
            width: 159
            height: 159
            color: "#000000"
            radius: 79.5
            border.width: 3
            border.color: "#ffffff"

        Image {
            id: image1
            x: 15
            y: 15
            width: 130
            height: 130
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/user.png"
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                window1.close()
                l.source="a.qml"
            }
        }
        }
        Loader{
            id:l
        }


        Rectangle {
            id: rect3
            x: 500
            y: 300
            width: 159
            height: 159
            color: "#000000"
            radius: 79.5
            border.width: 3
            border.color: "#f9f9f9"

        Image {
            id: image2
            x: 15
            y: 15
            width: 130
            height: 130
            fillMode: Image.PreserveAspectFit
            source: "qrc:/sum.png"
        }

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
        }
        }

        Rectangle {
            id: rect4
            x: 681
            y: 300
            width: 159
            height: 159
            color: "#000000"
            radius: 79.5
            border.width: 3
            border.color: "#f9f9f9"
        Image {
            id: image3
            x: 15
            y: 15
            width: 130
            height: 130
            fillMode: Image.PreserveAspectFit
            source: "qrc:/timeline.png"
        }

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
        }
        }
        Rectangle {
            id: rect5
            x: 858
            y: 300
            opacity:1
            width: 159
            height: 159
            color: "#000000"
            radius: 79.5
            border.width: 3
            border.color: "#f7f7f7"
        Image {
            id: image4
            x: 15
            y: 15
            width: 130
            height: 130
            fillMode: Image.PreserveAspectFit
            source: "qrc:/settings.png"
        }

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
        }
    }

    Text {
        id: element
        x: 0
        y: 107
        width: 530
        height: 151
        color: "white"
        text: qsTr("0.00")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 134
        PropertyAnimation on x{
            target: element
            property: "x"
            to:487
            duration: 300
        }
        MouseArea{
            anchors.fill: parent
        }
    }

    Text {
        id: element3
        x: 258
        y: 11
        width: 324
        height: 56
        color: "#f5f5f5"
        text: qsTr("NO : 01 - 001")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 29
        SequentialAnimation on color{
            loops: Animation.Infinite
        ColorAnimation{targets:[element,element1,element2,element3];property:"color";from: "red";to:"yellow"; duration:250}
        ColorAnimation{targets:[element,element1,element3,element2];property:"color";from: "green";to:"blue"; duration:250}
        }
    }

}

