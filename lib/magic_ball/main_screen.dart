import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/exit_app_alert_box.dart';
import 'dart:math';

class MagicBallMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ExitAppAlertBox(
          context: context,
          appTitle: 'Magic Ball',
          terminate: false,
        );
        return false;
      },
      child: BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = 1 + Random().nextInt(5);
          });
        },
        child: Image(
          image: AssetImage('images/magic_ball/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
