import QtQuick 2.4
import Ubuntu.Components 1.3
import QtMultimedia 5.0

MainView {

	id: torch
	applicationName: "torch.costales"

	property bool isON: false

	width: units.gu(40)
	height: units.gu(70)

	Page {
		title: "Torch"

		Image {
			id: mylighticon
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.verticalCenter: parent.verticalCenter
			source: isON ? "img/light_on.png" : "img/light_off.png"

			MouseArea {
				anchors.fill: parent
				onClicked: {
					isON = !isON
				}
			}
		}

		Camera {
			id: camera
			flash.mode: isON ? Camera.FlashVideoLight : Camera.FlashOff
		}
	}
}

