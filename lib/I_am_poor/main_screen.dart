import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/exit_app_alert_box.dart';

class IAmPoorMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ExitAppAlertBox(
          context: context,
          appTitle: 'I Am Poor',
          terminate: false,
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: Text('I Am Poor'),
        ),
        body: Center(
          child: Image.asset('images/poor.png'),
        ),
      ),
    );
  }
}
