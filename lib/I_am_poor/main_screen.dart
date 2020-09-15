import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';

class IAmPoorMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'I Am Poor',
      appWidgetTree: Scaffold(
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
