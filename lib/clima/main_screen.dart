import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';
import 'package:the_complete_app_by_appbrewery/clima/screens/loading_screen.dart';

class ClimaMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'Clima',
      appWidgetTree: Theme(
        data: ThemeData.dark(),
        child: Scaffold(
          body: LoadingScreen(),
        ),
      ),
    );
  }
}
