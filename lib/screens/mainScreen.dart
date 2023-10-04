import 'package:bcttracker/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "package:bcttracker/constants/coin_data.dart";
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String? selectedCurrency = "INR";

  final String url = "https://rest.coinapi.io/v1/exchangerate";

  DropdownButton<String> androidDropDownButton() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropDownItems.add(newItem);
    }
    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropDownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
          getcryptoData("BTC", value);
        });
      },
    );
  }

  void getcryptoDataBTC(currency) async {
    Networking network = Networking();
    var res = await network.getData(
        '$url/BTC/$currency?apikey=9F1B4A22-E024-4FA7-85C2-CB7718DD309F');
    print(res);
  }

  void getcryptoDataETH(currency) async {
    Networking network = Networking();
    var res = await network.getData(
        '$url/ETH/$currency?apikey=9F1B4A22-E024-4FA7-85C2-CB7718DD309F');
    print(res);
  }

  void getcryptoDataDoge(currency) async {
    Networking network = Networking();
    var res = await network.getData(
        '$url/BTC/$currency?apikey=9F1B4A22-E024-4FA7-85C2-CB7718DD309F');
    print(res);
  }

  void getcryptoDataRipple(currency) async {
    Networking network = Networking();
    var res = await network.getData(
        '$url/BTC/$currency?apikey=9F1B4A22-E024-4FA7-85C2-CB7718DD309F');
    print(res);
  }

  CupertinoPicker iosCupertinoPicker() {
    List<Text> items = [];
    for (String currency in currenciesList) {
      items.add(
        Text(currency),
      );
    }
    return CupertinoPicker(
      itemExtent: 36.0,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: items,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Home",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Current Rate",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      Icon(
                        FontAwesomeIcons.bitcoin,
                        size: 40.0,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "3000 $selectedCurrency",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Current Rate",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      // const ImageIcon(
                      //   AssetImage('images/eth.png'),
                      //   size: 40.0,
                      // )
                      Icon(
                        FontAwesomeIcons.ethereum,
                        size: 40.0,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "3000 $selectedCurrency",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Current Rate",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      const ImageIcon(
                        AssetImage('images/doge.png'),
                        size: 40.0,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "3000 $selectedCurrency",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Current Rate",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      const ImageIcon(
                        AssetImage("images/rip.png"),
                        size: 40.0,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "3000 $selectedCurrency",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 140.0,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.grey[800]),
                // height: 60.0,
                child: Platform.isAndroid
                    ? androidDropDownButton()
                    : iosCupertinoPicker(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
