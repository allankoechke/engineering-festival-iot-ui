import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Item {
    Layout.fillWidth: true
    Layout.preferredHeight: 40

    property bool isWifiConnected: false
    property bool isRemoteConnectionEnabled: true

    RowLayout
    {
        anchors.fill: parent
        anchors.margins: 4

        Image
        {
            Layout.fillHeight: true
            Layout.preferredWidth: height
            Layout.margins: 5
            source: "qrc:/assets/images/icon.png"
            fillMode: Image.PreserveAspectFit
        }

        Item
        {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        MenuButton
        {
            menuIcon: "\uf011"
            isEnabled: true
            onClicked: mainApp.close()
        }

        Rectangle
        {
            Layout.preferredWidth: 1; color: "grey"
            Layout.fillHeight: true; opacity: 0.8
        }


        MenuButton
        {
            menuIcon: isWifiConnected? "\uf1eb":"\uf6ac"
            isEnabled: isWifiConnected
            onClicked: isWifiConnected = !isWifiConnected
        }

        MenuButton
        {
            menuIcon: "\uf78a"
            isEnabled: isRemoteConnectionEnabled
            onClicked: isRemoteConnectionEnabled = !isRemoteConnectionEnabled
        }

        MenuButton
        {
            menuIcon: "\uf013"
            isEnabled: true
            onClicked: settingsPopup.open()
        }

        Text{
            font.pixelSize: 20
            text: currentTime
            color: "white"
            Layout.fillHeight: true
            verticalAlignment: Text.AlignVCenter
            Layout.rightMargin: 5
            Layout.leftMargin: 5
        }
    }

    Rectangle
    {
        color: Qt.darker(darkThemePaneColor)
        height: 1; width: parent.width
        anchors.bottom: parent.bottom
    }
}
