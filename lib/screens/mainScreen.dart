import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "package:bcttracker/constants/coin_data.dart";
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class MainScreen extends StatefulWidget {
  MainScreen({this.coinDatas});

  final coinDatas;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    updateUI(widget.coinDatas);
  }

  String? selectedCurrency = "INR";

  String btcRate = "";
  String ethRate = "";
  String dogeRate = "";
  String ltcRate = "";
  bool isWating = false;

  void getData() async {
    isWating = true;
    try {
      var data = await CoinData().getCryptoData(selectedCurrency);
      isWating = false;
      updateUI(data);
    } catch (error) {
      print(error);
    }
  }

  void updateUI(dynamic data) {
    setState(() {
      btcRate = data["BTC"];
      ethRate = data["ETH"];
      dogeRate = data["DOGE"];
      ltcRate = data["LTC"];
    });
  }

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
          getData();
        });
      },
    );
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
                      Row(
                        children: [
                          Text(
                            isWating ? "?" : btcRate,
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "$selectedCurrency",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                        ],
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
                      Row(
                        children: [
                          Text(
                            isWating ? "?" : ethRate,
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "$selectedCurrency",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                        ],
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
                      Row(
                        children: [
                          Text(
                            isWating ? "?" : dogeRate,
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "$selectedCurrency",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                        ],
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
                      const Icon(FontAwesomeIcons.litecoinSign)
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            isWating ? "?" : ltcRate,
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "$selectedCurrency",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                        ],
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
