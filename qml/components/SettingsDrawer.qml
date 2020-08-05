import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4

Rectangle
{
    color: Qt.rgba(10/255, 20/255,35/255, 1)

    Text{
        color: "white"
        text: qsTr("SETTINGS")
        font.pixelSize: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 10; anchors.top: parent.top
    }

    Rectangle
    {
        color: Qt.darker(darkThemePaneColor)
        height: 1; width: parent.width
        anchors.top: parent.top
        anchors.topMargin: 40
    }

    ColumnLayout
    {
        anchors.fill: parent
        anchors.topMargin: 60

        Item
        {
            Layout.fillWidth: true
            Layout.preferredHeight: 50

            RowLayout
            {
                anchors.leftMargin: 15
                anchors.rightMargin: 10
                anchors.fill: parent

                Text{
                    color: "white"
                    text: qsTr("Fan Mode")
                    font.pixelSize: 15
                    verticalAlignment: Text.AlignVCenter
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                ComboBox
                {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    model: ["Auto", "Manual", "Off"]
                    font.pixelSize: 18
                }
            }
        }

        Item{
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
