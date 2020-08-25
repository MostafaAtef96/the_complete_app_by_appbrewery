import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/mi_card/main_screen.dart';
import 'widgets/app_card.dart';
import 'i_am_rich/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/I_am_poor/main_screen.dart';

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
                  onPress: () {
                    //Go to I Am Rich App.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IAmRichMainScreen(),
                      ),
                    );
                  },
                  appIconPath: 'images/diamond.png',
                  moduleNumber: 3,
                  appTitle: 'I Am Rich',
                  cardBackgroundColor: Colors.blueGrey[900],
                  appTitleColor: Colors.white,
                ),
                AppCard(
                  onPress: () {
                    //Go to I Am Poor App.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IAmPoorMainScreen(),
                      ),
                    );
                  },
                  //Image was downloaded from pngwing.com
                  appIconPath: 'images/poor.png',
                  moduleNumber: 5,
                  appTitle: 'I Am Poor',
                  cardBackgroundColor: Colors.teal[900],
                  appTitleColor: Colors.white,
                ),
                AppCard(
                  onPress: () {
                    //Go to I Am Poor App.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MiCard(),
                      ),
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