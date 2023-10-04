import 'dart:convert';
import 'package:http/http.dart' as http;

class Networking {
  Networking({this.url = ""});

  final String url;

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
