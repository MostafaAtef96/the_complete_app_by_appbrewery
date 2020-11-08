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
            children: [
              //This is going to be the application card containing an Image, and the name of the app
              AppCard(
                appIconPath: 'images/diamond.png',
                moduleNumber: 3,
                appTitle: 'I Am Rich',
                cardBackgroundColor: Colors.blueGrey[900],
                appTitleColor: Colors.white,
                mainScreenRoute: IAmRichMainScreen.iAmRichHomeScreenID,
              ),
              AppCard(
                //Image was downloaded from pngwing.com
                appIconPath: 'images/poor.png',
                moduleNumber: 5,
                appTitle: 'I Am Poor',
                cardBackgroundColor: Colors.teal[900],
                appTitleColor: Colors.white,
                mainScreenRoute: IAmPoorMainScreen.iAmPoorHomeScreenID,
              ),
              AppCard(
                appIconPath: 'images/BusinessCard.png',
                moduleNumber: 6,
                appTitle: 'MiCard',
                cardBackgroundColor: Colors.teal[900],
                appTitleColor: Colors.white,
                mainScreenRoute: MiCardMainScreen.miCardHomeScreenID,
              ),
              AppCard(
                //Image was downloaded from pngtree.com
                appIconPath: 'images/dicee/diceeIcon.png',
                moduleNumber: 7,
                appTitle: 'Dicee',
                cardBackgroundColor: Colors.red,
                appTitleColor: Colors.white,
                mainScreenRoute: DiceeMainScreen.diceeHomeScreenID,
              ),
              AppCard(
                //Image was downloaded from  pngtree.com
                appIconPath: 'images/magic_ball/MagicBallIcon.png',
                moduleNumber: 8,
                appTitle: 'Magic Ball',
                cardBackgroundColor: Colors.blue[900],
                appTitleColor: Colors.white,
                mainScreenRoute: MagicBallMainScreen.magicBallHomeScreenID,
              ),
              AppCard(
                //Image was downloaded from pngtree.com
                appIconPath: 'images/xylophone.png',
                moduleNumber: 9,
                appTitle: 'Xylophone',
                cardBackgroundColor: Colors.green[900],
                appTitleColor: Colors.white,
                mainScreenRoute: XylophoneMainScreen.xylophoneHomeScreenID,
              ),
              AppCard(
                //Image was downloaded from pngtree.com
                appIconPath: 'images/quizzler.png',
                moduleNumber: 10,
                appTitle: 'Quizzler',
                cardBackgroundColor: Colors.grey.shade900,
                appTitleColor: Colors.white,
                mainScreenRoute: QuizzlerMainScreen.quizzlerHomeScreenID,
              ),
              AppCard(
                //Image was downloaded from pngtree.com
                appIconPath: 'images/destini.png',
                moduleNumber: 11,
                appTitle: 'Destini',
                cardBackgroundColor: Colors.blue,
                appTitleColor: Colors.white,
                mainScreenRoute: DestiniMainScreen.destiniHomeScreenID,
              ),
              AppCard(
                //Image was downloaded from pngtree.com
                appIconPath: 'images/bmi_calculator.png',
                moduleNumber: 12,
                appTitle: 'BMI Calculator',
                cardBackgroundColor: Color(0xFF0A0D22),
                appTitleColor: Colors.white,
                mainScreenRoute: BMIMainScreen.bmiHomeScreenID,
              ),
              AppCard(
                //Image was downloaded from pngtree.com
                appIconPath: 'images/clima/ClimaIcon.png',
                moduleNumber: 13,
                appTitle: 'Clima',
                cardBackgroundColor: Color(0xFF30302E),
                appTitleColor: Colors.white,
                mainScreenRoute: ClimaMainScreen.climaHomeScreenID,
              ),
              AppCard(
                //Image was downloaded from pngtree.com
                appIconPath: 'images/BitcoinTicker.png',
                moduleNumber: 14,
                appTitle: 'Bitcoin Ticker',
                cardBackgroundColor: Colors.lightBlue,
                appTitleColor: Colors.white,
                mainScreenRoute:
                    BitcoinTickerMainScreen.bitcoinTickerHomeScreenID,
              ),
              AppCard(
                //Image was downloaded from pngtree.com
                appIconPath: 'images/FlashChat.png',
                moduleNumber: 15,
                appTitle: 'Flash Chat',
                cardBackgroundColor: Colors.lightBlue,
                appTitleColor: Colors.white,
                mainScreenRoute: FlashChatMainScreen.flashChatHomeScreenID,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
