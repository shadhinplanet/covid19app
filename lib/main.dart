import 'package:covid_19/pages/HomePage.dart';
import 'package:covid_19/pages/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Colors.white,
        buttonColor: Color(0xFF01579b),
      ),
      initialRoute: '/',
      routes: {
        '/HomePage': (context) => HomePage()
      }
    );
  }
}