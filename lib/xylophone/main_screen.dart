import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/exit_app_alert_box.dart';

class XylophoneMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ExitAppAlertBox(
          context: context,
          appTitle: 'Xylophone',
          terminate: false,
        );
        return false;
      },
      child: Container(),
    );
  }
}
