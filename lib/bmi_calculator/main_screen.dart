import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';
import 'package:the_complete_app_by_appbrewery/bmi_calculator/screens/input_page.dart';

class BMIMainScreen extends StatelessWidget {
  static const String bmiHomeScreenID = 'BMI';
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'BMI Calculator',
      appWidgetTree: Scaffold(
        body: InputPage(),
      ),
    );
  }
}
