import 'package:bcttracker/services/networking.dart';

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

const List<String> cryptoList = ['BTC', 'ETH', 'DOGE', 'LTC'];

class CoinData {
  final String url_base = "https://rest.coinapi.io/v1/exchangerate";

  Future getCryptoData(String? currency) async {
    Map<String, String> cryptoRate = {};
    Networking network = Networking();
    for (String crypto in cryptoList) {
      var res = await network.getData(
          '$url_base/$crypto/$currency?apikey=9F1B4A22-E024-4FA7-85C2-CB7718DD309F');
      double rate = res["rate"];
      cryptoRate[crypto] = rate.toStringAsFixed(0);
    }
    print(cryptoRate);
    return cryptoRate;
  }
}
