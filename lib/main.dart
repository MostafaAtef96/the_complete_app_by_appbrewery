import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:the_complete_app_by_appbrewery/i_am_rich/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/dicee/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/mi_card/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/I_am_poor/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/magic_ball/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/xylophone/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/quizzler/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/destini/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/bmi_calculator/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/clima/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/bitcoin_ticker/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Return the main screen of the Full App.
    return MaterialApp(
//      theme: ThemeData.dark(),
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
        '/Destini': (context) => DestiniMainScreen(),
        '/BMI': (context) => BMIMainScreen(),
        '/Clima': (context) => ClimaMainScreen(),
        '/BitcoinTicker': (context) => BitcoinTickerMainScreen(),
        '/FlashChat': (context) => FlashChatMainScreen(),
      },
    );
  }
}
