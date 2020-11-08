import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:the_complete_app_by_appbrewery/config.dart';

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData(String targetCryptoCurrency, String targetCurrency) async {
    String url =
        '$coinAPIURL/$targetCryptoCurrency/$targetCurrency?apikey=$CoinApiApiKey';
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var price = data['rate'];
      return price;
    } else {
      print(response.statusCode);
      throw ('ERROR IN GETTING RESPONSE FROM API!');
    }
  }
}
