import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:the_complete_app_by_appbrewery/bitcoin_ticker/coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  List<double> prices = [];

  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String currency in currenciesList) {
      DropdownMenuItem<String> newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
          getDate();
        });
      },
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
        selectedCurrency = currenciesList[selectedIndex];
        getDate();
      },
      children: pickerItems,
    );
  }

  String BTCPrice = "";
  String ETHPrice = "";
  String LTCPrice = "";

  void getDate() async {
    prices.clear();
    try {
      prices.add(await CoinData().getCoinData('BTC', selectedCurrency));
      prices.add(await CoinData().getCoinData('ETH', selectedCurrency));
      prices.add(await CoinData().getCoinData('LTC', selectedCurrency));
      setState(() {
        BTCPrice = prices[0].toStringAsFixed(0);
        ETHPrice = prices[1].toStringAsFixed(0);
        LTCPrice = prices[2].toStringAsFixed(0);
      });
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    super.initState();
    getDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CryptoCard(
                unitPrice: BTCPrice,
                selectedCurrency: selectedCurrency,
                selectedCryptoCurrency: 'BTC',
              ),
              CryptoCard(
                unitPrice: ETHPrice,
                selectedCurrency: selectedCurrency,
                selectedCryptoCurrency: 'ETH',
              ),
              CryptoCard(
                unitPrice: LTCPrice,
                selectedCurrency: selectedCurrency,
                selectedCryptoCurrency: 'LTC',
              ),
            ],
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iOSPicker() : androidDropdown(),
          ),
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    Key key,
    @required this.unitPrice,
    @required this.selectedCurrency,
    @required this.selectedCryptoCurrency,
  }) : super(key: key);

  final String unitPrice;
  final String selectedCurrency;
  final String selectedCryptoCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $selectedCryptoCurrency = $unitPrice $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
