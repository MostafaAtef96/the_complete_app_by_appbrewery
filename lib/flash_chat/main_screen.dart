import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/screens/welcome_screen.dart';

class FlashChatMainScreen extends StatelessWidget {
  static const String flashChatHomeScreenID = 'FlashChat';

  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'Flash Chat',
      appWidgetTree: WelcomeScreen(),
    );
  }
}
