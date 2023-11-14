import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "./basic" as Basic
import SerialPortDemo.SWitchpage 1.0
import MySerialPort 1.0
import CustomPlot 1.0

Page{
    id: windowroot

    function setPortName( str){
        right_main.setModel(str)
    }
    function sendSetting(state){
        var value=state+'/'+right_main.getSetting()
        sp_obj.openPort(value)
    }

    Component.onCompleted: {
        sp_obj.portNameSignal.connect(setPortName)
        sp_obj.initPort()
        right_main.sendSettingInfoSignal.connect(sendSetting)

    }

    SerialPort {
        id: sp_obj
    }


    Basic.Rectangle {
        id: rect_left
//        width: 256 + 12
        width: 0
        radius: 0
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: rect_bottom.top
        color: "black"
        border.color: "gray"


        LeftMain{
            id: left_main
            anchors.fill: parent
        }

    }

    Basic.Rectangle {
        id: rect_middle
        radius: 0
        anchors.left: rect_left.right
        anchors.top: parent.top
        anchors.right: rect_right.left
        anchors.bottom: rect_bottom.top
        color: "black"
        border.color: "gray"


        MiddleMain {
            id: middle_main
            anchors.fill: parent

//            CustomPlotItem {
//                id: customPlot
//                anchors.fill: parent

//                Component.onCompleted: initCustomPlot()
//            }

            Rectangle {
                id: plotContainer
                anchors.fill: parent
                color: "black"
                border.color: "gray"


                Timer {
                    id: expandedPlotTimer
                    interval: 10
                    repeat: true
                    property var currentExpandedPlot: null  // Store the reference to the currently expanded plot
                    onTriggered: {
                        if (currentExpandedPlot) {
                            currentExpandedPlot.upAisleData();
                        }
                    }
                }

                Grid {
                    id: plotsGrid
                    columns: 5
                    anchors.fill: parent
                    spacing: 5

                    Repeater {
                        id: plotsRepeater
                        model: 10
                        delegate: Item {
                            id: placeholder
                            width: plotsGrid.width / 5 - 5
                            height: plotsGrid.height / 2 - 5

                            CustomPlotItem {
                                id: plotItem
                                width: parent.width
                                height: parent.height
                                property int plotIndex: index

                                // Store original size and position
                                property real originalWidth: width
                                property real originalHeight: height
                                property bool isExpanded: false

//                                MouseArea {
//                                    anchors.fill: parent
//                                    acceptedButtons: Qt.LeftButton | Qt.RightButton

//                                    onPressed: {
//                                        if (mouse.button === Qt.LeftButton && !plotItem.isExpanded) {
//                                            plotItem.originalWidth = plotItem.width;
//                                            plotItem.originalHeight = plotItem.height;
//                                            plotItem.width = plotContainer.width;
//                                            plotItem.height = plotContainer.height;
//                                            plotItem.parent = plotContainer;  // Change the parent to the outer container
//                                            plotItem.x = 0;
//                                            plotItem.y = 0;
//                                            plotItem.z = 1; // Bring to front
//                                            plotItem.isExpanded = true;

//                                            expandedPlotTimer.currentExpandedPlot = plotItem;
//                                            expandedPlotTimer.start();
//                                        }
//                                    }

//                                    onReleased: {
//                                        if (mouse.button === Qt.RightButton && plotItem.isExpanded) {
//                                            plotItem.width = plotItem.originalWidth;
//                                            plotItem.height = plotItem.originalHeight;
//                                            plotItem.parent = placeholder;  // Change the parent back to the placeholder
//                                            plotItem.x = 0;  // Reset the x and y coordinates
//                                            plotItem.y = 0;
//                                            plotItem.z = 0; // Send to back
//                                            plotItem.isExpanded = false;

//                                            expandedPlotTimer.stop();
//                                            expandedPlotTimer.currentExpandedPlot = null;
//                                        }
//                                    }



//                                }

                                MouseArea {
                                   anchors.fill: parent
                                   onClicked: {
                                       if (!plotItem.isExpanded) {
                                           plotItem.originalWidth = plotItem.width;
                                           plotItem.originalHeight = plotItem.height;
                                           plotItem.width = plotContainer.width;
                                           plotItem.height = plotContainer.height;
                                           plotItem.parent = plotContainer;  // Change the parent to the outer container
                                           plotItem.x = 0;
                                           plotItem.y = 0;
                                           plotItem.z = 1; // Bring to front
                                           plotItem.isExpanded = true;

                                           expandedPlotTimer.currentExpandedPlot = plotItem;
                                           expandedPlotTimer.start();
                                       } else {
                                           plotItem.width = plotItem.originalWidth;
                                           plotItem.height = plotItem.originalHeight;
                                           plotItem.parent = placeholder;  // Change the parent back to the placeholder
                                           plotItem.x = 0;  // Reset the x and y coordinates
                                           plotItem.y = 0;
                                           plotItem.z = 0; // Send to back
                                           plotItem.isExpanded = false;

                                           expandedPlotTimer.stop();
                                           expandedPlotTimer.currentExpandedPlot = null;
                                       }
                                   }
                               }





                                Component.onCompleted: initCustomPlot(plotIndex)  // Pass the plotIndex to the init function
                            }
                        }
                    }
                }
            }
        }

    }

    Basic.Rectangle {
        id: rect_right
        width: 200
        radius: 0
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: rect_bottom.top
        color: "black"
        border.color: "gray"


        RightMain {
            id: right_main
            anchors.fill: parent

            onSenChooseAisleSignal: {
                customPlot.setAisleValue( choosedAisle )
            }

            onSendChoosePlural: {
                customPlot.setPluralValue( choosedPlural )
            }
        }

    }

    Basic.Rectangle {
        id: rect_bottom
        width: parent.width
        height: 20
        radius:0
        anchors.bottom: parent.bottom
        color: "black"
        border.color: "gray"

        BottomMain {
            id: bottom_main
            anchors.fill: parent
        }

    }

}
