import 'package:bcttracker/constants/colors.dart';
import 'package:bcttracker/screens/loadingScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: primary,
        ),
        scaffoldBackgroundColor: const Color(0xFF000000),
      ),
      home: LoadingScreen(),
    );
  }
}
