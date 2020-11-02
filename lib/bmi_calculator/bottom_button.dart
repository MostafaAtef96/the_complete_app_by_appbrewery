import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTap});

  final Function onTap;
  final Text buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: buttonTitle,
        ),
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
