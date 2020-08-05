import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Rectangle {
    id: root
    color: Qt.rgba(0/255, 87/255,130/255, 0.5)
    // color: Qt.rgba(30/255, 30/255,30/255, 0.7)
    height: 100; width: parent.width
    radius: 4

    property string roomIcon: "\uf4b8"
    property string roomName: "Living Room"
    property int roomTemperature: 25
    property var tempt:[24, 25, 34, 27, 28, 30, 31, 35, 27, 26]

    Timer
    {
        repeat: true
        running: true
        interval: 2500
        onTriggered: roomTemperature=tempt[Math.floor(Math.random()*10)] // get a random value from the tempt array
    }

    RowLayout
    {
        anchors.fill: parent
        anchors.margins: 10

        Item
        {
            Layout.fillHeight: true
            Layout.preferredWidth: height

            AppIcon
            {
                size: root.height*0.4
                color: "white"; //opacity: 0.6
                icon: roomIcon
                anchors.centerIn: parent
            }
        }

        Item
        {
            id: roomNameParent
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout
            {
                anchors.fill: parent
                spacing: 5

                Text{
                    id: txt
                    font.pixelSize: 15
                    font.bold: true
                    color: "white"
                    text: roomName
                    Layout.alignment: Qt.AlignHCenter
                }

                Text{
                    font.pixelSize: 50
                    font.bold: true
                    color: "white"
                    text: roomTemperature.toString()+"°"
                    Layout.alignment: Qt.AlignHCenter
                    Layout.fillHeight: true
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }

        Item
        {
            visible: false
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Item
        {
            Layout.fillHeight: true
            Layout.preferredWidth: height/3-2

            ColumnLayout
            {
                anchors.fill: parent
                spacing: 1

                Item
                {
                    Layout.fillWidth: true
                    Layout.preferredHeight: width

                    AppIcon
                    {
                        anchors.centerIn: parent
                        size: parent.height/2
                        icon: "\uf00d"
                        color: "grey"
                    }
                }
                Item
                {
                    Layout.fillWidth: true
                    Layout.preferredHeight: width

                    AppIcon
                    {
                        anchors.centerIn: parent
                        size: parent.height/2
                        icon: "\uf058"
                        color: "grey"
                    }
                }
                Item
                {
                    Layout.fillWidth: true
                    Layout.preferredHeight: width

                    AppIcon
                    {
                        anchors.centerIn: parent
                        size: parent.height/2
                        icon: "\uf013"
                        color: "grey"
                    }
                }
            }
        }

    }
}
