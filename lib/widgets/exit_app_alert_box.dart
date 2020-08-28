import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/services.dart';

void ExitAppAlertBox({
  BuildContext context,
  String appTitle,
  //true => Terminate the app, false => pop the current sub-app.
  bool terminate,
}) {
  Alert(
    context: context,
    type: AlertType.warning,
    title: "Exit!",
    desc: "Are you sure you want to exit $appTitle?",
    buttons: [
      DialogButton(
        child: Text(
          "Yes",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => terminate
            ? SystemChannels.platform.invokeMethod('SystemNavigator.pop')
            : Navigator.of(context).popUntil((route) => route.isFirst),
        color: Colors.redAccent,
      ),
      DialogButton(
        child: Text(
          "No",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Color(0xff40c4ff),
      ),
    ],
  ).show();
}
