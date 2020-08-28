import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/exit_app_alert_box.dart';

class DiceeMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ExitAppAlertBox(
          context: context,
          appTitle: 'Dicee',
          terminate: false,
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dicee/dice1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dicee/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
