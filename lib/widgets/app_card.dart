import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'visit_app_alert_box.dart';
import 'package:the_complete_app_by_appbrewery/constants.dart';

//This is going to be the application card containing an Image, and the name of the app
class AppCard extends StatelessWidget {
  AppCard({
    this.appIconPath,
    this.moduleNumber,
    this.appTitle,
    this.cardBackgroundColor,
    this.appTitleColor,
    this.mainScreenRoute,
  });

  final String appIconPath;
  final int moduleNumber;
  final String appTitle;
  final Color cardBackgroundColor;
  final Color appTitleColor;
  final String mainScreenRoute;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                child: Image.asset(
                  appIconPath,
                  height: 100.0,
                ),
              ),
              Expanded(
                //The following column will display the application information
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
      onTap: () {
        //Open App Alert.
        VisitAppAlertBox(
          context: context,
          alertTitle: appTitle,
          alertDescription: appDescription[appTitle],
          alertImagePath: appIconPath,
          appTitle: appTitle,
          screenRoute: mainScreenRoute,
        );
      },
    );
  }
}
