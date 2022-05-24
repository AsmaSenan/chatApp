import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Window 2.15

ApplicationWindow {
    width: 540
    height: 960
    visible: true
    title: qsTr("Hello World") //if this property removed the title will the project name

   StackView {
       id: stackView
       anchors.fill: parent
       initialItem: ContactPage {}

   }


}
