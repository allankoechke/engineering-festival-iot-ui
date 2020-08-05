import QtQuick 2.12
import QtQuick.Window 2.12

import "./views"

Window {
    id: mainApp
    visible: true
    width: 800
    height: 480
    flags: Qt.FramelessWindowHint
    title: qsTr("Engineering Festival IoT UI")

    // Properties, aliases
    property alias fontAwesomeFontLoader: fontAwesomeFontLoader
    property alias mainView: mainView

    // Theme properties
    property bool isDarkTheme: true
    property string darkThemeBgColor: "#1E2124"
    property string darkThemePaneColor: "#424549"

    //
    property string currentTime: Qt.formatDateTime(new Date(), "HH:MM:ss")
    property int currentLivingRoomTemp: 30


    // Load the fontawesome font
    FontLoader
    {
        id: fontAwesomeFontLoader
        source: "qrc:/assets/fonts/fontawesome.otf"
    }

    Timer
    {
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            currentTime = Qt.formatDateTime(new Date(), "HH:MM:ss")
            var temperatures = [27, 28, 29, 30, 31, 32, 33, 35, 36, 28]
            currentLivingRoomTemp = temperatures[Math.floor(Math.random()*10)]
        }
    }

    // Add the MainView
    MainView
    {
        id: mainView
    }
}
