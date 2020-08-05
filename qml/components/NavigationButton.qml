import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../components"

Item {
    id: root

    property bool isMenuSelected: false
    property string menuLabel: "Home"
    property string menuIcon: ""

    Layout.preferredWidth: 80
    Layout.fillHeight: true

    signal clicked()

    ColumnLayout
    {
        anchors.fill: parent
        anchors.margins: 3
        spacing: 10

        AppIcon
        {
            size: 25
            color: isMenuSelected? "orange":"white"
            icon: menuIcon
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 10
        }

        Text{
            color: isMenuSelected? "orange":"white"
            text: menuLabel
            font.pixelSize: 12
            Layout.bottomMargin: 10
            Layout.alignment: Qt.AlignHCenter
        }
    }

    MouseArea
    {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
