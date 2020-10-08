import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Signup Screen",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "signupscreen",
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Container(
          color: Color.fromRGBO(253, 241, 129, 1.0),
          child: Center(
            child: Text(
              "SignupScreen",
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }
}
