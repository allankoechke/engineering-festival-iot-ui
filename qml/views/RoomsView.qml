import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

import "../components"
import "../models"

Item {
    Layout.fillHeight: true
    Layout.fillWidth: true

    RoomsModel
    {
        id: listModel
    }

    Item
    {
        width: parent.width*0.6
        height: parent.height
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter

        ScrollView
        {
            anchors.fill: parent
            clip: true

            ListView
            {
                anchors.fill: parent
                spacing: 5

                model: listModel
                delegate: Component
                {
                    id: listDelegate
                    RoomItem
                    {
                        roomIcon: ico
                        roomName: name
                    }
                }
            }
        }
    }
}
