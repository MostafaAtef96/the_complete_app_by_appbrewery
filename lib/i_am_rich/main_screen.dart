import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';

class IAmRichMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'I Am Rich',
      appWidgetTree: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text('I Am Rich'),
        ),
        body: Center(
          child: Image.asset('images/diamond.png'),
        ),
      ),
    );
  }
}
