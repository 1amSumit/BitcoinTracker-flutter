import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(30.0),
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
              margin: EdgeInsets.all(30.0),
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
                        AssetImage('images/bitcoin.png'),
                        size: 50.0,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "3000 INR",
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Net Profit",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        "initial Investment",
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1800 INR",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1200 INR",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
