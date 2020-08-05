import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

import "../components"
import "../models"

Item {
    Layout.fillHeight: true
    Layout.fillWidth: true

    FavouritesModel
    {
        id: listModel
    }

    Item
    {
        width: parent.width*0.7
        height: parent.height
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30

        Text{
            id: catText
            anchors.top: parent.top
            color: "white"
            font.pixelSize: 20
            text: qsTr("FAVOURITES")
        }

        ScrollView
        {
            id: scroll
            anchors.top: catText.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 20
            clip: true

            GridView
            {
                anchors.fill: parent
                model: listModel
                cellWidth: 130
                cellHeight: 160
                delegate: Component{
                    id: listDelegate

                    FavouritesItem
                    {
                        favouriteIcon: ico
                        favouriteLabel: label
                    }
                }
            }
        }
    }
}
