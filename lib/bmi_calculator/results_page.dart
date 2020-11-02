import 'package:the_complete_app_by_appbrewery/bmi_calculator/constants.dart';
import 'package:the_complete_app_by_appbrewery/bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                cardColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'TINY',
                      style: kResultTextStyle,
                    ),
                    Text(
                      'NORMAL',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'OVER',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: Text(
                'RE-CALCULATE',
                style: kLargeButtonTextStyle,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
