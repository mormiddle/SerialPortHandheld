import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "./basic" as Basic
import "./../js/images.js" as JsPng

Item {
    id: root
    anchors.fill: parent

    property var choosedAisle: 0
    property var choosedPlural: 0
    signal sendSettingInfoSignal(int state)
    //signal clearSignal()
    signal senChooseAisleSignal( var value)
    signal sendChoosePlural( var value)

    function setModel(s){
        myModel.append({s})
    }
    function getSetting(state){
        var value=portComBox.currentText+'/'
        return value
    }
    function setOpenBtnText(station){
        openBtn.btnStation=station
        console.log("get result:"+openBtn.btnStation)
    }

    Component.onCompleted: {
        sp_obj.returnOpenResultSignal.connect(setOpenBtnText)
        sp_obj.portNameSignal.connect(setPortName)

    }



    ColumnLayout {
        width: root.width
        height: root.height




       //串口选择栏
//       Basic.ComboBox {
//           id: portComBox
//           implicitHeight: 100  // 设置ComboBox的高度


//           model: ListModel {
//               id: myModel
//           }

//           delegate: ItemDelegate {
//               id: itmdlg
//               height: 100
//               width: parent.width
//               text: modelData
//               font.pointSize: 20
//               background: Rectangle {
//                   id: backRect
//                   anchors.fill: parent
//                   color: itmdlg.hovered ? "#507BF6":"white"
//               }
//           }
//       }

       //串口选择按键
       Basic.Button {
           id: triggerButton
           text: "选择串口"
           onClicked: portDialog.open()  // 点击按钮时打开对话框
       }

       // 串口选择对话框
       Basic.Dialog {
           id: portDialog
           width: 500
           height: 250
           title: "串口选择"

           x: (windowroot.width - width) / 2
           y: (windowroot.height - height) / 2

           // 下拉框
           Basic.ComboBox {
               id: portComBox
               implicitHeight: 100  // 设置ComboBox的高度
               width: parent.width
               anchors.centerIn: parent  // 将ComboBox置于对话框中央


               model: ListModel {
                   id: myModel
               }

               delegate: ItemDelegate {
                   id: itmdlg
                   height: 100
                   width: parent.width
                   text: modelData
                   font.pointSize: 20
                   background: Rectangle {
                       id: backRect
                       anchors.fill: parent
                       color: itmdlg.hovered ? "#507BF6":"white"
                   }
               }
           }
       }



       Basic.Button {
           id: openBtn
           height: 30
           width: parent.width
           text: btnStation == false ? "打开串口":"关闭串口"
           property bool btnStation: false
           font.family: "Helvetica"
           font.bold: true
           onClicked: {
               btnStation = !btnStation
               if( sp_obj.readIsMyPortOpen() ) {
                   emit: sendSettingInfoSignal(0)
                   customPlotTimer.stop()
               }
               else {
                   emit: sendSettingInfoSignal(1)
                   customPlotTimer.start()
               }

           }
       }


       Basic.Button {
           id: calibrationBtn
           height: 30
           width: parent.width
           text: "参数标定"
           font.family: "Helvetica"
           font.bold: true
           onClicked: {
               sp_obj.parameterCalibration();

                   for (var i = 0; i < plotsRepeater.count; i++) {
                       var placeholderItem = plotsRepeater.itemAt(i);
                       var plot = placeholderItem.children[0]; // Get the first child of the placeholder, which is the CustomPlotItem
                       plot.clearPlot();
                   }

               }

           }

       Basic.Button {
           id: settingBtn
           height: 30
           width: parent.width
           text: "阈值设置"
           font.family: "Helvetica"
           font.bold: true
           onClicked: {
               thresholdDialog.open()
               thresholdDialog.parent = windowroot;  // 或其他顶级元素
               }
           }

       Basic.Dialog {
           id: thresholdDialog
           title: "设置阈值"
           width: 500
           height: 250

           x: (windowroot.width - width) / 2
           y: (windowroot.height - height) / 2 - 100

           standardButtons: Dialog.Ok | Dialog.Cancel

           Component.onCompleted: {
               thresholdInput.text = sp_obj.readThresholdValue()  // 假设 readThresholdValue 在 QML 中是可用的
           }

           Column {
               anchors.centerIn: parent
               spacing: 0

               Label {
                   text: "请输入阈值："
                   color: "white"
               }

               TextField {
                   id: thresholdInput
                   width: 350
                   height: 80
                   font.pixelSize: 45  // 设置字体大小为20像素
                   validator: DoubleValidator {}  // 只接受数字
               }
           }

           onAccepted: {
               if (thresholdInput.text) {
                   for (var i = 0; i < plotsRepeater.count; i++) {
                       var placeholderItem = plotsRepeater.itemAt(i);
                       var plot = placeholderItem.children[0]; // Get the first child of the placeholder, which is the CustomPlotItem
                       plot.thresholdSetting(Number(thresholdInput.text));
                   }
               }

            sp_obj.updateThresholdValue(thresholdInput.text)
           }
       }


//       Basic.Button {
//           id: saveBtn
//           height: 30
//           width: parent.width
//           text: "保存数据"
//           font.family: "Helvetica"
//           font.bold: true
//           onClicked: {
//                customPlot.saveData()
//               }

//           }

       Basic.Button {
           id: cleanPlotBtn
           height: 30
           width: parent.width
           text: "清除表格"
           font.family: "Helvetica"
           font.bold: true
           onClicked: {
               for (var i = 0; i < plotsRepeater.count; i++) {
                   var placeholderItem = plotsRepeater.itemAt(i);
                   var plot = placeholderItem.children[0]; // Get the first child of the placeholder, which is the CustomPlotItem
                   plot.clearPlot();
               }
           }
       }

       Basic.Button {
           id: closeBtn
           height: 30
           width: parent.width
           text: "关闭软件"
           font.family: "Helvetica"
           font.bold: true
           onClicked: {
                Qt.quit();
               }
           }
    }




    Timer {
        id: customPlotTimer
        interval: 10
        repeat: true
        onTriggered: {
            for (var i = 0; i < plotsRepeater.count; i++) {
                var placeholderItem = plotsRepeater.itemAt(i);
                var plot = placeholderItem.children[0]; // Get the first child of the placeholder, which is the CustomPlotItem
                plot.upAisleData();
            }
        }
    }


 }



