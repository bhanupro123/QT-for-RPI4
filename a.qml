import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Controls 2.5
Window {
    id: window
    visible: true
    width: 1024
    height: 600
    title: qsTr("Hello World")
    property var typ:""
    property var str:""
    property var pass:""
    property var na:0

    Connections {
        target: bhanu
        onList:
        {
           model.append({text:str1})
            model1.append({text:str1})
         }
        onMod:{
         if(b==true)
         {
           tf1.text=""
             hint.text="NEW ACCOUNT IS CREATED...."
             username.currentIndex=-1
             comboBox1.currentIndex=-1
         }
        }
        onCount:
        {
            if(coun>=5)
            {
              tf1.activeFocusOnPress=true
                hint.text="good"
                str=username.editText
            }
            if(coun<5)
            {
//                console.log("atleast 5")
                tf1.activeFocusOnPress=false
                hint.text="username atleast '5' charecters"
            }
        }
    }
    ComboBox {
        id: comboBox
        x: 405
        y: 101
        width: 341
        height: 53
    }
    Timer {
        id:time1
            interval: 10; running: true; repeat: false
            onTriggered: {
                bhanu.ulist()
            }
    }
    Timer {
        id:timer1
            interval: 10; running: true; repeat: true
            onTriggered: {
                //bhanu.ulist()
             comb.popup.open()
            }
    }
    TextField {
        id: tf
        x: 405
        y: 203
        width: 341
        height: 61
        text:""
        placeholderText: "password"
    }

    Button {
        id: button
        x: 875
        y: 101
        width: 95
        height: 59
        text: qsTr("Add")
        onClicked: popup.open()
    }

    Button {
        id: button1
        x: 875
        y: 203
        width: 97
        height: 66
        text: qsTr("Edit")
    }

    Button {
        id: button2
        x: 875
        y: 308
        width: 95
        height: 58
        text: qsTr("Delete")
    }

    Button {
        id: button3
        x: 463
        y: 402
        width: 215
        height: 66
        text: qsTr("LOG IN")
    }

    ComboBox{
        id:comb
        x: 78
        y: 94
        width: 262
        height: 40
        editable: true
          model: ListModel {
              id: model
          }
           }
        Text {
            id: del

        }
           Popup{
id:popup
x:0
y:0
width:parent.width-1
height: parent.height-1
Rectangle {
    id: rectangle
    x: 111
    y: 15
    width: 400
    height: 51
    color: "#fcfbfb"
    radius: 9
    border.width: 2
    border.color: "#110c0c"

    Text {
        id: element1
        x: 32
        y: 8
        width: 350
        height: 30
        color: "#110c0c"
        text: qsTr("Create A New Account")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 23
    }
    Text {
        id: hint
        x: 100
        color: "red"
        y: 417
        text: qsTr("ENTER DETAILS")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }
}

Rectangle {
    id: rectangle1
    x: 151
    y: 108
    width: 338
    height: 54
    color: "#fcfbfb"
    radius: 7
    border.width: 2
    border.color: "#110c0c"

    ComboBox {
        id: username
        x: 8
        y: 6
        font.pointSize: 18
        width: 321
        height: 43
        editable: true
        currentIndex: -1
      inputMethodHints:  Qt.ImhNone
      onAccepted: {
          str=username.editText
          hint.text=str
          bhanu.len(str)
      }
        displayText:"enter username"
              model: ListModel {
              id: model1
          }
    }
}
ComboBox {
    id: comboBox1
    x: 151
    y: 261
    width: 338
    height: 40
    font.pointSize: 18
    currentIndex: -1
    onCurrentValueChanged: {
        comboBox1.displayText=currentText
        if(currentIndex===0)
        {
            typ="O"
            console.log(typ)
        }
        if(currentIndex===1)
        {
            typ="A"
            console.log(typ)
        }
        if(currentIndex===2)
        {
            typ="S"
            console.log(typ)
        }
    }
    displayText: "select type"
    model :["Operator","Admin","Supervisor"]
}

Button {
    id: login
    x: 151
    y: 366
    width: 158
    height: 40
    text: qsTr("LOGIN")
    onClicked: {
        if(username.editText===username.currentText)
        {
            hint.text="user already existed.."
        }
        else
        {
            hint.text="username doesnot existed"

       if (tf1.length>=3)
       {
           if(comboBox1.currentIndex==-1)
           {
                  hint.text="please select type"
           }
           else
           {
               console.log("everything is perfect")
               hint.text=str
               model.append({text:str})
               model1.append({text:str})
               console.log(typ,str,pass,"fuckyou")
             bhanu.add(typ,str,pass)
           }

       }
       else{
           hint.text="password must be >3 "
       }
    }
    }
}

Button {
    id: back
    x: 341
    y: 366
    width: 148
    height: 40
    text: qsTr("BACK")
    onClicked: popup.close()
}

TextField {
    id: tf1
    x: 151
    y: 187
    width: 338
    height: 51
    font.pointSize: 20
    maximumLength: 8
    placeholderText: "enter password"
    text: qsTr("")
    activeFocusOnPress : false
    echoMode:TextField.Password
    onTextEdited: {
        pass=tf1.text
        console.log(pass)
    }
}
           }

           Frame {
               id: frame
               x: 78
               y: 93
               width: 262
               height: 421

//               ComboBox {
//                   id: comboBox2
//                   x: -12
//                   y: -12
               //                   width: 262
               //                   height: 40
               //               }
           }

           ComboBox {
               id: comboBox2
               x: 405
               y: 299
               width: 341
               height: 57
           }


}
