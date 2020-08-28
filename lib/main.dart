import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/dicee/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/mi_card/main_screen.dart';
import 'widgets/app_card.dart';
import 'i_am_rich/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/I_am_poor/main_screen.dart';
import 'package:the_complete_app_by_appbrewery/widgets/visit_app_alert_box.dart';
import 'package:the_complete_app_by_appbrewery/widgets/exit_app_alert_box.dart';

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
        '/dicee': (context) => DiceeMainScreen(),
      },
    );
  }
}
