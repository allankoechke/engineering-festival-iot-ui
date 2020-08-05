import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../components"

Item
{
    id: root
    Layout.fillHeight: true
    Layout.preferredWidth: height

    property string menuIcon: ""
    property bool isEnabled: false
    signal clicked()

    AppIcon
    {
        anchors.centerIn: parent
        size: 18; color: "white"; opacity: isEnabled? 1:0.8
        icon: menuIcon
    }

    MouseArea
    {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
