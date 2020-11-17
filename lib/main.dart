import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_complete_app_by_appbrewery/todoey/models/task_data.dart';
import 'package:the_complete_app_by_appbrewery/todoey/models/tasks.dart';
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
import 'package:the_complete_app_by_appbrewery/flash_chat/screens/login_screen.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/screens/registration_screen.dart';
import 'package:the_complete_app_by_appbrewery/flash_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:the_complete_app_by_appbrewery/todoey/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Return the main screen of the Full App.
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        initialRoute: HomeScreen.screenID,
        routes: {
          HomeScreen.screenID: (context) => HomeScreen(),
          IAmRichMainScreen.iAmRichHomeScreenID: (context) =>
              IAmRichMainScreen(),
          IAmPoorMainScreen.iAmPoorHomeScreenID: (context) =>
              IAmPoorMainScreen(),
          MiCardMainScreen.miCardHomeScreenID: (context) => MiCardMainScreen(),
          DiceeMainScreen.diceeHomeScreenID: (context) => DiceeMainScreen(),
          MagicBallMainScreen.magicBallHomeScreenID: (context) =>
              MagicBallMainScreen(),
          XylophoneMainScreen.xylophoneHomeScreenID: (context) =>
              XylophoneMainScreen(),
          QuizzlerMainScreen.quizzlerHomeScreenID: (context) =>
              QuizzlerMainScreen(),
          DestiniMainScreen.destiniHomeScreenID: (context) =>
              DestiniMainScreen(),
          BMIMainScreen.bmiHomeScreenID: (context) => BMIMainScreen(),
          ClimaMainScreen.climaHomeScreenID: (context) => ClimaMainScreen(),
          BitcoinTickerMainScreen.bitcoinTickerHomeScreenID: (context) =>
              BitcoinTickerMainScreen(),
          FlashChatMainScreen.flashChatHomeScreenID: (context) =>
              FlashChatMainScreen(),
          FlashChatLoginScreen.flashChatLoginScreenID: (context) =>
              FlashChatLoginScreen(),
          FlashChatRegistrationScreen.flashChatRegistrationScreenID:
              (context) => FlashChatRegistrationScreen(),
          FlashChatChatScreen.flashChatChatScreenID: (context) =>
              FlashChatChatScreen(),
          TodoeyMainScreen.todoeyHomeScreenID: (context) => TodoeyMainScreen(),
        },
      ),
    );
  }
}
