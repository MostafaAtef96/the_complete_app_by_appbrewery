import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

void getLocation() async {
  Location location = Location();
  await location.getCurrentLocation();
  print(location.latitude);
  print(location.longitude);
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
