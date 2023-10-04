import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String? selectedCurrency = "INR";
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
                  child: DropdownButton<String>(
                    value: selectedCurrency,
                    items: [
                      DropdownMenuItem(
                        child: Text("INR"),
                        value: "INR",
                      ),
                      DropdownMenuItem(
                        child: Text("USD"),
                        value: "USD",
                      ),
                      DropdownMenuItem(
                        child: Text("EUR"),
                        value: "EUR",
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedCurrency = value;
                      });
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
