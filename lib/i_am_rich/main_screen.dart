import 'package:flutter/material.dart';

class IAmRichMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('I Am Rich'),
      ),
      body: Center(
        child: Image.asset('images/diamond.png'),
      ),
    );
  }
}
