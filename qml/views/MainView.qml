import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3

import "../components" // To use the compeonents
import "../views" // To use the views

Image {
    anchors.fill: parent
    //color: "#36393e"
    source: "qrc:/assets/images/bg.jpeg"

    property alias settingsPopup: settingsPopup
    property alias navDrawer: navDrawer

    ColumnLayout
    {
        anchors.fill: parent
        spacing: 10

        TopBar
        { id: topStatusBar }

        Item
        {
            Layout.fillWidth: true
            Layout.fillHeight: true

            StackLayout
            {
                anchors.fill: parent
                currentIndex: navigationBar.currentMenuIndex

                FavouriteView
                {
                    id: favouriteView
                }

                HomeView
                {
                    id: homeView
                }

                RoomsView
                {
                    id: roomsView
                }

                CategoryView
                {
                    id: categoryView
                }
            }
        }
    }

    Drawer
    {
        id: navDrawer
        edge: Qt.BottomEdge
        height: 70; modal: false
        width: mainApp.width

        contentItem: Item
        {
            NavigationBar{
                id: navigationBar
            }
        }

        onOpened: xyz.visible=false
        onClosed: xyz.visible=true
    }

    Drawer
    {
        id: settingsPopup
        edge: Qt.RightEdge
        width: mainApp.width*0.4
        height: mainApp.height
        modal: false

        contentItem: SettingsDrawer {}
    }

    Rectangle
    {
        id: xyz
        width: 50
        height: 50
        radius: height/2
        color: "#018BDE"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 10; anchors.bottom: parent.bottom

        AppIcon
        {
            size: 20
            color: "white"
            icon: "\uf0c9"
            anchors.centerIn: parent
        }


        MouseArea
        {
            anchors.fill: parent
            onClicked: navDrawer.open()
        }
    }
}
