import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/exit_app_alert_box.dart';

class AppMainWidget extends StatelessWidget {
  final String appTitle;
  final Widget appWidgetTree;

  AppMainWidget({this.appTitle, this.appWidgetTree});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ExitAppAlertBox(
          context: context,
          appTitle: appTitle,
          terminate: false,
        );
        return false;
      },
      child: appWidgetTree,
    );
  }
}
