import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Window 2.15


Page{
    anchors.fill: parent
    header: Label {
        padding: 10
        text: qsTr("Contacts")
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    ListView {
        id: listView
        anchors.fill: parent
        topMargin: 20
//            leftMargin: 48
//            rightMargin: 48
        bottomMargin: 20
        spacing: 5
        model: ["Albert Einstein", "Ernest Hemingway", "Hans Gude"]
        delegate: ItemDelegate{
            text: modelData
            font.pixelSize: 15
            width: listView.width
            height: 80
            leftPadding: 60 + 32

            Image {
                id: avatar
                width: 80
                height: 80
                source: "qrc:/images/images/" + modelData.replace(" ", "_") + ".jpg"
            }
        }
    }
}
