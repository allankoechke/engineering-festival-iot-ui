import QtQuick 2.0
import RadialBar 1.0


RadialBar
{
    width: 350
    minValue: 0
    maxValue: 100
    dialWidth: 10
    backgroundColor: "transparent"
    foregroundColor: Qt.rgba(93/255, 133/255,158/255,0.4)
    progressColor: "#018BDE"
    textColor: "transparent"
    suffixText: ""
    showText: false
    penStyle: Qt.RoundCap
    dialType: RadialBar.MinToMax
}
