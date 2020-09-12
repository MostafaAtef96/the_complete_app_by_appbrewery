import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:the_complete_app_by_appbrewery/dicee/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/mi_card/main_screen.dart';
import 'i_am_rich/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/I_am_poor/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/magic_ball/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/xylophone/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/quizzler/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Return the main screen of the Full App.
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/IAmRich': (context) => IAmRichMainScreen(),
        '/IAmPoor': (context) => IAmPoorMainScreen(),
        '/MiCard': (context) => MiCardMainScreen(),
        '/Dicee': (context) => DiceeMainScreen(),
        '/MagicBall': (context) => MagicBallMainScreen(),
        '/Xylophone': (context) => XylophoneMainScreen(),
        '/Quizzler': (context) => QuizzlerMainScreen(),
      },
    );
  }
}
