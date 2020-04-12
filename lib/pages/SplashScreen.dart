import 'dart:async';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final globalKey = new GlobalKey<ScaffoldState>();
//------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), _handleTapEvent);
    return new Scaffold(
      key: globalKey,
      body: _splashContainer(),
    );
  }

//------------------------------------------------------------------------------
  Widget _splashContainer() {
    return GestureDetector(
        onTap: _handleTapEvent,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FlareActor(
              "assets/bg.flr",
              alignment: Alignment.center,
              animation: "bg",
              fit: BoxFit.cover,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                      "Covid 19",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w900,
                          fontSize: 50.0),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "corona information hub",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Raleway",
                          fontSize: 15.0),
                    ),
              ],
            ),

    
          ],
        ));
  }

//------------------------------------------------------------------------------
  void _handleTapEvent() async {
    if (this.mounted) {
      setState(() {
        Navigator.pushReplacementNamed(context, '/HomePage');
      });
    }
  }
//------------------------------------------------------------------------------
}
