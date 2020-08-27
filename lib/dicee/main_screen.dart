import 'package:flutter/material.dart';

class DiceeMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dicee/dice1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dicee/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
