import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/MostafaAtef.jpg'),
            ),
            Text(
              'Mostafa Ibrahim',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'SOFTWARE ENGINEER',
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 2.5,
                color: Colors.teal[100],
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
