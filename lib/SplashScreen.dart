import 'package:flutter/material.dart';
import 'SignUpScreen.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
      home: Scaffold(
        body:  Container(color: Color.fromRGBO(253, 241, 129,1.0),
          child: InkWell(
            onTap: openSignupScreen(context),
            child: Center(
              child: Image.asset("images/trilokinath_logo.png")
            ),
          ),
        ),
      ),
    );
  }

  openSignupScreen(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SignupScreen()));
  }
}
