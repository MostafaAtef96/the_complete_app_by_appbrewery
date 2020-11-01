import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';

class DestiniMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'Destini',
      appWidgetTree: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Destini'),
          backgroundColor: Colors.red,
        ),
        body: Destini(),
      ),
    );
  }
}

class Destini extends StatefulWidget {
  @override
  _DestiniState createState() => _DestiniState();
}

class _DestiniState extends State<Destini> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
