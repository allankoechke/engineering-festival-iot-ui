import QtQuick 2.0
import QtQuick.Layouts 1.3
import RadialBar 1.0

import "../components"

Item {
    Layout.fillHeight: true
    Layout.fillWidth: true

    RowLayout
    {
        anchors.fill: parent
        spacing: 5

        Item
        {
            Layout.fillHeight: true
            Layout.fillWidth: true

            Item
            {
                anchors.centerIn: parent
                width: 300; height: 300

                CircularProgressbar
                {
                    width: 400
                    anchors.centerIn: parent
                    startAngle: 20
                    spanAngle: 320
                    value: currentLivingRoomTemp

                    ColumnLayout
                    {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top; anchors.bottom: parent.bottom

                        Text{
                            color: "white"
                            font.pixelSize: 18
                            text: "Living\n Room"
                            textFormat: Text.StyledText
                            Layout.alignment: Qt.AlignHCenter
                            Layout.topMargin: 30
                        }

                        Text{
                            color: "white"
                            font.pixelSize: 75
                            text: currentLivingRoomTemp + "°"
                            textFormat: Text.StyledText
                            Layout.alignment: Qt.AlignHCenter
                        }

                        Text{
                            color: "white"
                            font.pixelSize: 18
                            text: "Fan: <b>Auto</b>"
                            textFormat: Text.StyledText
                            Layout.alignment: Qt.AlignHCenter
                            Layout.bottomMargin: 30
                        }
                    }
                }
            }
        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout
            {
                anchors.centerIn: parent

                Text{
                    id: txt
                    color: "white"
                    font.pixelSize: 35
                    text: Qt.formatDateTime(new Date(), "dddd, MMMM dd")
                }

                Item
                {
                    height: txt1.height
                    width: txt.width

                    RowLayout
                    {

                        Text{
                            id: txt1
                            color: "white"
                            font.pixelSize: 70
                            text: "78°"
                        }

                        Text{
                            color: "white"
                            font.pixelSize: 20
                            text: "Cooker temperature"
                            Layout.alignment: Qt.AlignBottom
                            Layout.bottomMargin: 10
                        }
                    }
                }
            }
        }
    }
}
//}
