import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/mi_card/main_screen.dart';
import 'widgets/app_card.dart';
import 'i_am_rich/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/I_am_poor/main_screen.dart';
import 'widgets/alert_box.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.lightBlueAccent,
            title: Center(
              child: Text('London App Brewery Full App'),
            ),
          ),
          body: Container(
            child: Column(
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
                    showAlertBox(
                      context: context,
                      alertTitle: 'I Am Rich',
                      alertDescription:
                          'I Am Rich App is a very simple application but full of new basic concepts anyone needs to start programming with Flutter.',
                      alertImagePath: 'images/diamond.png',
                      appTitle: 'I Am Rich',
                      screen: IAmRichMainScreen(),
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
                    showAlertBox(
                      context: context,
                      alertTitle: 'I Am Poor',
                      alertDescription:
                          'I Am Poor App is similar to the I Am Rich App. The main idea is to practice creating a new Flutter App from Scratch, and following a given Widget Tree to create the desired UI.',
                      alertImagePath: 'images/poor.png',
                      appTitle: 'I Am Poor',
                      screen: IAmPoorMainScreen(),
                    );
                  },
                ),
                AppCard(
                  onPress: () {
                    //Open MiCard Alert.
                    showAlertBox(
                      context: context,
                      alertTitle: 'MiCard',
                      alertDescription:
                          'Mi Card is a personal business card. Imagine every time you wanted to give someone your contact details or your business card but you didn\'t have it on you. Well, now you can get them to download your business card as an app.',
                      alertImagePath: 'images/BusinessCard.png',
                      appTitle: 'MiCard',
                      screen: MiCardMainScreen(),
                    );
                  },
                  appIconPath: 'images/BusinessCard.png',
                  moduleNumber: 6,
                  appTitle: 'MiCard',
                  cardBackgroundColor: Colors.teal[900],
                  appTitleColor: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
