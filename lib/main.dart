import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Center(
            child: Text('London App Brewery Full App'),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              //This is going to be the application card containing an Image, and the name of the app
              Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  //Card colour will be similar to the color in the application theme.
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image(
                          //Application Icon
                          image: AssetImage('images/diamond.png'),
                        ),
                      ),
                      Expanded(
                        //The following column will display the application information
                        child: Column(
                          children: [
                            Text(
                              'Module: 1',
                              style: TextStyle(color: Colors.white),
                            ),
                            //Application title.
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'I Am Rich',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
