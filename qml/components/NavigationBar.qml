import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Rectangle {
    width: parent.width
    height: 70
    color: Qt.rgba(10/255, 20/255,35/255, 1)   //"#0a1423"//mainApp.darkThemeBgColor

    property int currentMenuIndex: 1

    onCurrentMenuIndexChanged: navDrawer.close()

    RowLayout
    {
        spacing: 40
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        NavigationButton
        {
            menuIcon: "\uf005"
            menuLabel: "Favourites"
            isMenuSelected: currentMenuIndex===0
            Layout.alignment: Qt.AlignHCenter
            onClicked: currentMenuIndex=0
        }

        NavigationButton
        {
            menuIcon: "\uf015"
            menuLabel: "Home"
            isMenuSelected: currentMenuIndex===1
            Layout.alignment: Qt.AlignHCenter
            onClicked: currentMenuIndex=1
        }

        NavigationButton
        {
            menuIcon: "\uf009"
            menuLabel: "Rooms"
            isMenuSelected: currentMenuIndex===2
            Layout.alignment: Qt.AlignHCenter
            onClicked: currentMenuIndex=2
        }

        NavigationButton
        {
            menuIcon: "\uf550"
            menuLabel: "Categories"
            isMenuSelected: currentMenuIndex===3
            Layout.alignment: Qt.AlignHCenter
            onClicked: currentMenuIndex=3
        }
    }
}
