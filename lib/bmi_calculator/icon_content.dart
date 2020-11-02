import 'package:flutter/material.dart';

const kIconTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8d8E98),
);

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
