import QtQuick 2.12
import QtQuick.Window 2.12

QtObject {
	id: root

    property QtObject $splashScreen: McSplashScreen{}

	property var loader: Loader{
        asynchronous: true
        source: "qrc:/MainView.qml"
        active: false
        onLoaded: {
            console.log("aaaaaaaaaaaaaaa");
            $splashScreen.delay();
        }
    }

	Component.onCompleted:{
        console.log("cccccccccccccccc");
        loader.active = true;
    }
}
