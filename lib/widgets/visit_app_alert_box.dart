import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void VisitAppAlertBox({
  BuildContext context,
  String alertTitle,
  String alertDescription,
  String alertImagePath,
  String appTitle,
  String screenRoute,
}) {
  Alert(
    context: context,
    title: alertTitle,
    desc: alertDescription,
    image: Image.asset(
      alertImagePath,
      height: 150.0,
    ),
    buttons: [
      DialogButton(
        child: Text(
          "Visit",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
          //Go to I Am Rich App.
          Navigator.pushNamed(context, screenRoute);
        },
        width: 120,
      ),
      DialogButton(
        child: Text(
          "Cancel",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120,
      ),
    ],
  ).show();
}
