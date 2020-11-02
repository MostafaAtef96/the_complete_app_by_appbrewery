import 'package:flutter/material.dart';

class RoundIconWidget extends StatelessWidget {
  final IconData childIcon;
  final Function changeValue;
  RoundIconWidget({this.childIcon, this.changeValue});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: changeValue,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
      child: Icon(
        childIcon,
        color: Colors.white,
      ),
    );
  }
}
