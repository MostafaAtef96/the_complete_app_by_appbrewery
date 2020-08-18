import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

//This is going to be the application card containing an Image, and the name of the app
class AppCard extends StatelessWidget {
  AppCard({
    this.onPress,
    this.appIconPath,
    this.moduleNumber,
    this.appTitle,
    this.cardBackgroundColor,
    this.appTitleColor,
  });

  final Function onPress;
  final String appIconPath;
  final int moduleNumber;
  final String appTitle;
  final Color cardBackgroundColor;
  final Color appTitleColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          //Card colour will be similar to the color in the application theme.
          color: cardBackgroundColor,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Image(
                  //Application Icon
                  image: AssetImage(appIconPath),
                ),
              ),
              Expanded(
                //The following column will display the application information
                child: Column(
                  children: [
                    Text(
                      'Module $moduleNumber App',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //Application title.
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      appTitle,
                      style: TextStyle(
                        color: appTitleColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
