import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Signup Screen",
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text(
              "Signup Screen",
              textDirection: TextDirection.ltr,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: getLogo()),
                getTextView("First Name"),
                getEditText("Enter your first name"),
                getTextView("Last Name"),
                getEditText("Enter your last name")
              ],
            ),
          )),
    );
  }

  Widget getTextView(String label) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        label,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 18.0, color: Colors.black),
      ),
    );
  }

  Widget getEditText(String hint) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextField(
          style: TextStyle(fontSize: 20.0),
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow)),
              hintText: hint)),
    );
  }

  Widget getLogo() {
    return Image.asset(
      "images/trilokinath_logo.png",
      width: 120,
      height: 120,
    );
  }
}
