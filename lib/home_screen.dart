import 'package:flutter/material.dart';
import 'widgets/app_card.dart';
import 'package:the_complete_app_by_appbrewery/widgets/visit_app_alert_box.dart';
import 'package:the_complete_app_by_appbrewery/widgets/exit_app_alert_box.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ExitAppAlertBox(
          context: context,
          appTitle: 'The Complete App By Appbrewery',
          terminate: true,
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff40c4ff),
          title: Center(
            child: Text('London App Brewery Full App'),
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              //This is going to be the application card containing an Image, and the name of the app
              AppCard(
                appIconPath: 'images/diamond.png',
                moduleNumber: 3,
                appTitle: 'I Am Rich',
                cardBackgroundColor: Colors.blueGrey[900],
                appTitleColor: Colors.white,
                onPress: () {
                  //Open I Am Rich Alert.
                  VisitAppAlertBox(
                    context: context,
                    alertTitle: 'I Am Rich',
                    alertDescription:
                        'I Am Rich App is a very simple application but full of new basic concepts anyone needs to start programming with Flutter.',
                    alertImagePath: 'images/diamond.png',
                    appTitle: 'I Am Rich',
                    screenRoute: '/IAmRich',
                  );
                },
              ),
              AppCard(
                //Image was downloaded from pngwing.com
                appIconPath: 'images/poor.png',
                moduleNumber: 5,
                appTitle: 'I Am Poor',
                cardBackgroundColor: Colors.teal[900],
                appTitleColor: Colors.white,
                onPress: () {
                  //Open I Am Poor Alert.
                  VisitAppAlertBox(
                    context: context,
                    alertTitle: 'I Am Poor',
                    alertDescription:
                        'I Am Poor App is similar to the I Am Rich App. The main idea is to practice creating a new Flutter App from Scratch, and following a given Widget Tree to create the desired UI.',
                    alertImagePath: 'images/poor.png',
                    appTitle: 'I Am Poor',
                    screenRoute: '/IAmPoor',
                  );
                },
              ),
              AppCard(
                appIconPath: 'images/BusinessCard.png',
                moduleNumber: 6,
                appTitle: 'MiCard',
                cardBackgroundColor: Colors.teal[900],
                appTitleColor: Colors.white,
                onPress: () {
                  //Open MiCard Alert.
                  VisitAppAlertBox(
                    context: context,
                    alertTitle: 'MiCard',
                    alertDescription:
                        'Mi Card is a personal business card. Imagine every time you wanted to give someone your contact details or your business card but you didn\'t have it on you. Well, now you can get them to download your business card as an app.',
                    alertImagePath: 'images/BusinessCard.png',
                    appTitle: 'MiCard',
                    screenRoute: '/MiCard',
                  );
                },
              ),
              AppCard(
                //Image was downloaded from pngwing.com
                appIconPath: 'images/dicee/diceeIcon.png',
                moduleNumber: 7,
                appTitle: 'Dicee',
                cardBackgroundColor: Colors.red,
                appTitleColor: Colors.white,
                onPress: () {
                  //Open Dicee Alert.
                  VisitAppAlertBox(
                    context: context,
                    alertTitle: 'Dicee',
                    alertDescription:
                        'Dicee is a Las Vegas dice app. You can make the die roll at the press of a button. With this app in your pocket, you’ll be able to settle any score on the go!',
                    alertImagePath: 'images/dicee/diceeIcon.png',
                    appTitle: 'Dicee',
                    screenRoute: '/Dicee',
                  );
                },
              ),
              AppCard(
                //Image was downloaded from pngwing.com
                appIconPath: 'images/magic_ball/MagicBallIcon.png',
                moduleNumber: 8,
                appTitle: 'Magic Ball',
                cardBackgroundColor: Colors.blue[900],
                appTitleColor: Colors.white,
                onPress: () {
                  //Open MagicBall Alert.
                  VisitAppAlertBox(
                    context: context,
                    alertTitle: 'Magic Ball',
                    alertDescription:
                        'Magic Ball will give you the answers to all the tricky questions in life. You can make the ball change at the press of a button.',
                    alertImagePath: 'images/magic_ball/MagicBallIcon.png',
                    appTitle: 'Magic Ball',
                    screenRoute: '/MagicBall',
                  );
                },
              ),
              AppCard(
                //Image was downloaded from pngwing.com
                appIconPath: 'images/xylophone.png',
                moduleNumber: 9,
                appTitle: 'Xylophone',
                cardBackgroundColor: Colors.blue[900],
                appTitleColor: Colors.white,
                onPress: () {
                  //Open Xylophone Alert.
                  VisitAppAlertBox(
                    context: context,
                    alertTitle: 'Xylophone',
                    alertDescription:
                        'Xylophone is a music app that plays Xylophone sounds. For every Beethoven out there, this will let you unleash your musical talent where ever you are.',
                    alertImagePath: 'images/xylophone.png',
                    appTitle: 'Xylophone',
                    screenRoute: '/MagicBall',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
