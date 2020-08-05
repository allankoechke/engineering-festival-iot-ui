import QtQuick 2.0
import QtQuick.Controls 2.2

Label {
    property real size
    property string icon

    text: icon
    font.pixelSize: size
    font.family: mainApp.fontAwesomeFontLoader.name
}
