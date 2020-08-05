import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3

import "../components"
import "../models"

Item {
    Layout.fillHeight: true
    Layout.fillWidth: true

    CategoryModel
    {
        id: listModel
    }

    Item
    {
        width: parent.width*0.8
        height: parent.height
        anchors.centerIn: parent

        Text{
            id: catText
            color: "white"
            font.pixelSize: 20
            text: qsTr("CATEGORY")
        }

        ScrollView
        {
            width: parent.width
            anchors.left: parent.left
            anchors.top: catText.bottom
            anchors.topMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            clip: true

            GridView
            {
                id: grid
                anchors.fill: parent
                model: listModel
                cellWidth: parent.width/2
                cellHeight: 73
                delegate: Component{
                    id: listDelegate

                    CategoryItem
                    {
                        width: grid.width/2-5
                        height: 70
                        categoryIcon: ico
                        categoryLabel: label
                    }
                }
            }
        }
    }
}
