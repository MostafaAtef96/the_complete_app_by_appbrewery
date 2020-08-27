import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void showAlertBox({
  BuildContext context,
  String alertTitle,
  String alertDescription,
  String alertImagePath,
  String appTitle,
  dynamic screen,
}) {
  Alert(
    context: context,
    title: alertTitle,
    desc: alertDescription,
    image: Image.asset(alertImagePath),
    buttons: [
      DialogButton(
        child: Text(
          "Visit $appTitle",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          Navigator.pop(context);
          //Go to I Am Rich App.
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screen,
            ),
          );
        },
        width: 120,
      ),
      DialogButton(
        child: Text(
          "Cancel",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120,
      ),
    ],
  ).show();
}
