import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';
import 'package:the_complete_app_by_appbrewery/destini/story_brain.dart';

class BMIMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'Destini',
      appWidgetTree: Scaffold(
        body: BMICalculator(),
      ),
    );
  }
}

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
