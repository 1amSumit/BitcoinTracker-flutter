import 'dart:convert';
import 'package:http/http.dart' as http;

class Networking {
  Networking({this.url = ""});

  final String url;

  final String url_base = "https://rest.coinapi.io/v1/exchangerate";
  Future getData(url) async {
    http.Response res = await http.get(
      Uri.parse(url),
    );
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      print(res.statusCode);
    }
  }
}
