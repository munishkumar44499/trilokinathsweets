import 'package:flutter/material.dart';
import 'SignUpScreen.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        body:  Container(color: Color.fromRGBO(253, 241, 129,1.0),
          child: InkWell(
            onTap: (){
              print("on tap");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignupScreen()));
            },
            child: Center(
              child: Image.asset("images/trilokinath_logo.png")
            ),
          ),
        ),
    );
  }

  openSignupScreen(BuildContext context) {

  }
}
