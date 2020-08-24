import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text('MiCard'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(
              width: 150.0,
              height: 20.0,
              child: Divider(
                color: Colors.teal[900],
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
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 25.0,
                  color: Colors.teal[900],
                ),
                title: Text(
                  '+20 109 327 7721',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.teal[900],
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  size: 25.0,
                  color: Colors.teal[900],
                ),
                title: Text(
                  'm.atef96@hotmail.com',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.teal[900],
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
