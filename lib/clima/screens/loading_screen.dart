import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/clima/screens/location_screen.dart';
import 'package:the_complete_app_by_appbrewery/clima/services/location.dart';
import 'package:the_complete_app_by_appbrewery/clima/services/networking.dart';
import 'package:the_complete_app_by_appbrewery/config.dart';
import 'package:the_complete_app_by_appbrewery/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    double latitude = location.latitude;
    double longitude = location.longitude;

    String url =
        '$openWeatherMapURL?lat=$latitude&lon=$longitude&appid=$openWeatherMapApiKey&units=metric';

    NetworkHelper networkHelper = NetworkHelper(url);
    var weatherData = await networkHelper.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    getLocationData();
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
