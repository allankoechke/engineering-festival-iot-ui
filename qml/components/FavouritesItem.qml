import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Rectangle {
    id: root
    width: 120
    height: 150
    radius: 4
    color: Qt.rgba(0/255, 87/255,130/255, 0.4)

    property string favouriteLabel: ""
    property string favouriteIcon: ""

    AppIcon
    {
        size: 14
        color: "white"
        icon: "\uf004"
        anchors.top: parent.top; anchors.right: parent.right
        anchors.rightMargin: 10; anchors.topMargin: 10
    }

    ColumnLayout
    {
        anchors.fill: parent

        Item
        {
            Layout.fillWidth: true
            Layout.preferredHeight: width

            AppIcon
            {
                anchors.centerIn: parent
                size: parent.height*0.4
                color: "white"
                icon: favouriteIcon
            }
        }

        Text{
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.bottomMargin: 15
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 15
            text: favouriteLabel
            color: "white"
        }
    }
}
