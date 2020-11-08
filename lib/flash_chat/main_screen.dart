import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/screens/welcome_screen.dart';

class FlashChatMainScreen extends StatelessWidget {
  static const String flashChatHomeScreenID = 'FlashChat';
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'Flash Chat',
      appWidgetTree: Theme(
        data: ThemeData.dark().copyWith(
            primaryColor: Colors.lightBlue,
            scaffoldBackgroundColor: Colors.white),
        child: Theme(
          data: ThemeData.dark().copyWith(
            textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.black54),
            ),
          ),
          child: WelcomeScreen(),
        ),
      ),
    );
  }
}
