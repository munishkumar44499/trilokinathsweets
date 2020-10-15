import 'package:flutter/material.dart';
import 'package:trilokinathsweets/common/colors.dart';
import 'package:trilokinathsweets/common/common_widget.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignupScreenState();
  }
}

class _SignupScreenState extends State<SignupScreen> {
  double width = 0;
  CommonWidget commonWidget = new CommonWidget();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Signup Screen",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(int.parse(themeColor)),
            centerTitle: true,
            leading: getbackButton(context),
            title: Text(
              "Signup Screen",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 25.0, color: Colors.red),
            ),
          ),
          body: getBody()),
    );
  }

  Widget getbackButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.red),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: commonWidget.getLogo()),
          commonWidget.getTextView("Name"),
          commonWidget.getEditText("Enter your name"),
          commonWidget.getTextView("Mobile Number"),
          commonWidget.getEditText("Enter your mobile number"),
          commonWidget.getTextView("Email Id"),
          commonWidget.getEditText("Enter your email id"),
          commonWidget.getTextView("Password"),
          commonWidget.getEditText("Enter your password"),
          commonWidget.getTextView("Confirm Password"),
          commonWidget.getEditText("Confirm password"),
          SizedBox(width: width, child: commonWidget.getButton("Signup"))
        ],
      ),
    );
  }
}
