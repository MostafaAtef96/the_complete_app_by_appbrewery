import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconDisplay;
  final String iconText;

  IconContent({this.iconDisplay, this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconDisplay,
          color: Color(0xFFFFFFFF),
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: kIconTextStyle,
        ),
      ],
    );
  }
}
