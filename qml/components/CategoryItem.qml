import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Rectangle {
    id: root

    radius: 4
    color: Qt.rgba(0/255, 87/255,130/255, 0.5) //"#5D859E"

    property string categoryLabel: ""
    property string categoryIcon: ""

    RowLayout
    {
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.topMargin: 10
        anchors.bottomMargin: 10

        Item
        {
            Layout.fillHeight: true
            Layout.preferredWidth: height

            AppIcon
            {
                anchors.centerIn: parent
                size: parent.height*0.6
                color: "white"
                icon: categoryIcon
            }
        }

        Text{
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.leftMargin: 10
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 18
            text: categoryLabel
            color: "white"
        }
    }
}
