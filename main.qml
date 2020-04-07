import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Controls 2.5
ApplicationWindow {
    id: window
    visible: true
      width: 1024
    height: 600
    title: qsTr("Hello World")
        color: "black"
        Timer {
                interval: 3000; running: true; repeat: true
                onTriggered:{
                    window.close()
                    load.source="comp1.qml"
                }
            }
        Loader{
            id:load
        }
    Rectangle {
        id: rect1
        x: 79
        y: 65
        opacity: 0
        radius: 40
        border.color: "#fdfdfd"
        width: 80
        height: 80
        color: "black"
        border.width: 4
        OpacityAnimator{
            target: rect1
            from: 0
            to:1
            duration: 1000
            running: true
        }
             ParallelAnimation on border.color{
loops: Animation.Infinite
                 PropertyAnimation{
                     target: rect1;property: "y";easing.type: Easing.OutBounce; to:400;duration: 3000
                 }
                 SequentialAnimation{

           ColorAnimation {target: rect1;property:"border.color";from: "red";to:"yellow"; duration: 500}
           ColorAnimation{ target:element1;property:"color";from: "red";to:"yellow";duration: 500}

           ColorAnimation {target: rect1;property:"border.color";from: "green";to:"blue"; duration: 500}
           ColorAnimation{ target:element1;property:"color";from: "green";to:"blue";duration: 500}

           ColorAnimation {target: rect1;property:"border.color";from: "yellow";to:"white"; duration: 500}
           ColorAnimation{ target:element1;property:"color";from: "white";to:"red";duration: 500}

                 }
             }
             Text {
                 id: element1
                 x: 28
                 y: 24
                 // anchors.fill: parent
                 color: "red"
                 text: qsTr("W")
                 verticalAlignment: Text.AlignVCenter
                 horizontalAlignment: Text.AlignHCenter
                 font.pixelSize: 28

             }

    }

    Rectangle {
        id: rect2
        x: 220
        y: 65
        width: 80
        height: 80
        color: "#000000"
        radius: 40
        border.color: "#fbfbfb"
        opacity: 1
             ParallelAnimation on border.color{
                 loops: Animation.Infinite
                 PropertyAnimation{
                     target: rect2;property: "y";easing.type: Easing.InOutBounce; to:400;duration: 3000
                 }
                 SequentialAnimation{

           ColorAnimation {target: rect2;property:"border.color";from: "red";to:"yellow"; duration: 500}
           ColorAnimation{ target:element2;property:"color";from: "red";to:"yellow";duration: 500}
           ColorAnimation {target: rect2;property:"border.color";from: "green";to:"blue"; duration: 500}
           ColorAnimation{ target:element2;property:"color";from: "green";to:"blue";duration: 500}
           ColorAnimation {target: rect2;property:"border.color";from: "yellow";to:"white"; duration: 500}
           ColorAnimation{ target:element2;property:"color";from: "white";to:"red";duration: 500}
                 }
             }

             Text {
                 id: element2
                 x: 28
                 y: 24
                 color: "#ff0000"
                 //anchors.fill: parent
                 text: qsTr("E")
                 verticalAlignment: Text.AlignVCenter
                 horizontalAlignment: Text.AlignHCenter
                 font.pixelSize: 28
             }
             border.width: 4
    }

    Rectangle {
        id: rect3
        x: 356
        y: 65
        width: 80
        height: 80
        color: "#000000"
        radius: 40
        border.color: "#f9f9f9"
        opacity: 1
        OpacityAnimator {
            target: rect3
            from: 0
            duration: 1000
            to: 1
            running: true
        }
        ParallelAnimation on border.color{
            loops: Animation.Infinite
            PropertyAnimation{
                target: rect3;property: "y";easing.type: Easing.OutBounce; to:400;duration: 3000
            }
            SequentialAnimation{

                ColorAnimation {target: rect3;property:"border.color";from: "red";to:"yellow"; duration: 500}
                ColorAnimation{ target:element3;property:"color";from: "red";to:"yellow";duration: 500}
                ColorAnimation {target: rect3;property:"border.color";from: "green";to:"blue"; duration: 500}
                ColorAnimation{ target:element3;property:"color";from: "green";to:"blue";duration: 500}
                ColorAnimation {target: rect3;property:"border.color";from: "yellow";to:"white"; duration: 500}
                ColorAnimation{ target:element3;property:"color";from: "white";to:"red";duration: 500}
            }
        }
        Text {
            id: element3
            x: 28
            y: 24
            color: "#ff0000"
            //anchors.fill: parent
            text: qsTr("L")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 28
        }
        border.width: 4
    }

    Rectangle {
        id: rect7
        x: 876
        y: 65
        width: 80
        height: 80
        color: "#000000"
        radius: 40
        border.color: "#f9f9f9"
        opacity: 1
        OpacityAnimator {
            target: rect7
            from: 0
            duration: 1000
            to: 1
            running: true
        }
        ParallelAnimation on border.color{
            loops: Animation.Infinite
            PropertyAnimation{
                target: rect7;property: "y";easing.type: Easing.OutBounce; to:400;duration: 3000
            }
            SequentialAnimation{

                ColorAnimation {target: rect7;property:"border.color";from: "red";to:"yellow"; duration: 500}
                ColorAnimation{ target:element7;property:"color";from: "red";to:"yellow";duration: 500}
                ColorAnimation {target: rect7;property:"border.color";from: "green";to:"blue"; duration: 500}
                ColorAnimation{ target:element7;property:"color";from: "green";to:"blue";duration: 500}
                ColorAnimation {target: rect7;property:"border.color";from: "yellow";to:"white"; duration: 500}
                ColorAnimation{ target:element7;property:"color";from: "white";to:"red";duration: 500}
            }
        }

        Text {
            id: element7
            x: 28
            y: 24
            color: "#ff0000"
            text: "E"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 28
        }
        border.width: 4
    }

    Rectangle {
        id: rect4
        x: 509
        y: 65
        width: 80
        height: 80
        color: "#000000"
        radius: 40
        opacity: 1
        OpacityAnimator {
            target: rect4
            from: 0
            duration: 1000
            to: 1
            running: true
        }
        ParallelAnimation on border.color{
loops: Animation.Infinite
            PropertyAnimation{
                target: rect4;property: "y";easing.type: Easing.InOutBounce; to:400;duration: 3000
            }
            SequentialAnimation{

      ColorAnimation {target: rect4;property:"border.color";from: "red";to:"yellow"; duration: 500}
      ColorAnimation{ target:element4;property:"color";from: "red";to:"yellow";duration: 500}

      ColorAnimation {target: rect4;property:"border.color";from: "green";to:"blue"; duration: 500}
      ColorAnimation{ target:element4;property:"color";from: "green";to:"blue";duration: 500}

      ColorAnimation {target: rect4;property:"border.color";from: "yellow";to:"white"; duration: 500}
      ColorAnimation{ target:element4;property:"color";from: "white";to:"red";duration: 500}

            }
        }
        Text {
            id: element4
            x: 28
            y: 24
            color: "#ff0000"
            text: qsTr("C")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 28
        }
        border.color: "#fdfdfd"
        border.width: 4
    }

    Rectangle {
        id: rect5
        x: 632
        y: 66
        width: 80
        height: 79
        color: "#000000"
        radius: 40
        opacity: 1
        OpacityAnimator {
            target: rect5
            from: 0
            duration: 500
            to: 1
            running: true
        }
        ParallelAnimation on border.color{
loops: Animation.Infinite
            PropertyAnimation{
                target: rect5;property: "y";easing.type: Easing.OutBounce; to:400;duration: 3000
            }
            SequentialAnimation{

      ColorAnimation {target: rect5;property:"border.color";from: "red";to:"yellow"; duration: 500}
      ColorAnimation{ target:element5;property:"color";from: "red";to:"yellow";duration: 500}

      ColorAnimation {target: rect5;property:"border.color";from: "green";to:"blue"; duration: 500}
      ColorAnimation{ target:element5;property:"color";from: "green";to:"blue";duration: 500}

      ColorAnimation {target: rect5;property:"border.color";from: "yellow";to:"white"; duration: 500}
      ColorAnimation{ target:element5;property:"color";from: "white";to:"red";duration: 500}

            }
        }
        Text {
            id: element5
            x: 28
            y: 24
            color: "#ff0000"
            text: qsTr("O")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 28
        }
        border.color: "#fbfbfb"
        border.width: 4
    }

    Rectangle {
        id: rect6
        x: 748
        y: 65
        width: 80
        height: 80
        color: "#000000"
        radius: 40
        opacity: 1
        OpacityAnimator {
            target: rect6
            from: 0
            duration: 500
            to: 1
            running: true
        }
        ParallelAnimation on border.color{
loops: Animation.Infinite
            PropertyAnimation{
                target: rect6;property: "y";easing.type: Easing.InOutBounce; to:400;duration: 3000
            }
            SequentialAnimation{

      ColorAnimation {target: rect6;property:"border.color";from: "red";to:"yellow"; duration: 500}
      ColorAnimation{ target:element6;property:"color";from: "red";to:"yellow";duration: 500}

      ColorAnimation {target: rect6;property:"border.color";from: "green";to:"blue"; duration: 500}
      ColorAnimation{ target:element6;property:"color";from: "green";to:"blue";duration: 500}

      ColorAnimation {target: rect6;property:"border.color";from: "yellow";to:"white"; duration: 500}
      ColorAnimation{ target:element6;property:"color";from: "white";to:"red";duration: 500}

            }
        }

        Text {
            id: element6
            x: 28
            y: 24
            color: "#ff0000"
            text: qsTr("M")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 28
        }
        border.color: "#fbfbfb"
        border.width: 4
    }
}
