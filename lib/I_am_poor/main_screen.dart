import 'package:flutter/material.dart';

class IAmPoorMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text('I Am Poor'),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/poor.png'),
        ),
      ),
    );
  }
}
