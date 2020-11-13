import 'package:flutter/material.dart';
import 'widgets/app_card.dart';
import 'package:the_complete_app_by_appbrewery/widgets/exit_app_alert_box.dart';
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

class HomeScreen extends StatelessWidget {
  static const String screenID = 'HomeScreen';

  AppCard createAppCard(String icon, int module, String title,
      Color backgroundColor, String mainRoute) {
    return AppCard(
      appIconPath: icon,
      moduleNumber: module,
      appTitle: title,
      cardBackgroundColor: backgroundColor,
      mainScreenRoute: mainRoute,
    );
  }

  List<AppCard> generateCards() {
    List<AppCard> appCards = [];
    appCards.add(createAppCard('images/diamond.png', 3, 'I Am Rich',
        Colors.blueGrey[900], IAmRichMainScreen.iAmRichHomeScreenID));
    appCards.add(createAppCard('images/poor.png', 5, 'I Am Poor',
        Colors.teal[900], IAmPoorMainScreen.iAmPoorHomeScreenID));
    appCards.add(createAppCard('images/BusinessCard.png', 6, 'MiCard',
        Colors.teal[900], MiCardMainScreen.miCardHomeScreenID));
    appCards.add(createAppCard('images/dicee/diceeIcon.png', 7, 'Dicee',
        Colors.red, DiceeMainScreen.diceeHomeScreenID));
    appCards.add(createAppCard(
        'images/magic_ball/MagicBallIcon.png',
        8,
        'Magic Ball',
        Colors.blue[900],
        MagicBallMainScreen.magicBallHomeScreenID));
    appCards.add(createAppCard('images/xylophone.png', 9, 'Xylophone',
        Colors.green[900], XylophoneMainScreen.xylophoneHomeScreenID));
    appCards.add(createAppCard('images/quizzler.png', 10, 'Quizzler',
        Colors.grey.shade900, QuizzlerMainScreen.quizzlerHomeScreenID));
    appCards.add(createAppCard('images/destini.png', 11, 'Destini', Colors.blue,
        DestiniMainScreen.destiniHomeScreenID));
    appCards.add(createAppCard('images/bmi_calculator.png', 12,
        'BMI Calculator', Color(0xFF0A0D22), BMIMainScreen.bmiHomeScreenID));
    appCards.add(createAppCard('images/clima/ClimaIcon.png', 13, 'Clima',
        Color(0xFF30302E), ClimaMainScreen.climaHomeScreenID));
    appCards.add(createAppCard('images/BitcoinTicker.png', 14, 'Bitcoin Ticker',
        Colors.lightBlue, BitcoinTickerMainScreen.bitcoinTickerHomeScreenID));
    appCards.add(createAppCard('images/FlashChat.png', 15, 'Flash Chat',
        Colors.lightBlue, FlashChatMainScreen.flashChatHomeScreenID));
    appCards.add(createAppCard('images/Todoey.png', 16, 'Todoey',
        Colors.lightBlue, FlashChatMainScreen.flashChatHomeScreenID));
    return appCards;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ExitAppAlertBox(
          context: context,
          appTitle: 'The Complete App By Appbrewery',
          terminate: true,
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff40c4ff),
          title: Center(
            child: Text('London App Brewery Full App'),
          ),
        ),
        body: Container(
          child: ListView(
            children: generateCards(),
          ),
        ),
      ),
    );
  }
}
