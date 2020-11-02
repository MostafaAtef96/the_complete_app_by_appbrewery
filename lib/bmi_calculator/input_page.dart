import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/bmi_calculator/reusable_card.dart';
import 'package:the_complete_app_by_appbrewery/bmi_calculator/icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);
const kActiveCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        cardColor: Color(0xFF1D1E33),
                        cardChild: IconContent(
                          iconDisplay: FontAwesomeIcons.mars,
                          iconText: 'MALE',
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        cardColor: Color(0xFF1D1E33),
                        cardChild: IconContent(
                          iconDisplay: FontAwesomeIcons.venus,
                          iconText: 'FEMALE',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        cardColor: Color(0xFF1D1E33),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        cardColor: Color(0xFF1D1E33),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: kBottomContainerHeight,
                padding: EdgeInsets.only(bottom: 20.0),
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
