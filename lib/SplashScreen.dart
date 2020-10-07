import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
      home: Scaffold(
        body:  Container(
          child: Center(
            child: Text(
              "This is Splash Screen",
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }
}
