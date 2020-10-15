import 'package:flutter/material.dart';
import 'package:trilokinathsweets/common/colors.dart';
import 'package:trilokinathsweets/ui/signup_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(int.parse(themeColor)),
        child: InkWell(
          onTap: () {
            print("on tap");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignupScreen()));
          },
          child: Center(child: Image.asset("images/trilokinath_logo.png")),
        ),
      ),
    );
  }
}
