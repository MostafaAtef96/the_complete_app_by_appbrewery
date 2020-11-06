import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';
import 'package:the_complete_app_by_appbrewery/bitcoin_ticker/price_Screen.dart';

class BitcoinTickerMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'BitcoinTicker',
      appWidgetTree: Theme(
        data: ThemeData.dark().copyWith(
            primaryColor: Colors.lightBlue,
            scaffoldBackgroundColor: Colors.white),
        child: PriceScreen(),
      ),
    );
  }
}
