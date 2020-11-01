import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';
import 'package:the_complete_app_by_appbrewery/bmi_calculator/input_page.dart';

class BMIMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'Destini',
      appWidgetTree: Scaffold(
        body: InputPage(),
      ),
    );
  }
}
