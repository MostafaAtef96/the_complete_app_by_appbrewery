import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'app_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
