import 'package:flutter/material.dart';
import '../ui/home_screen.dart';
import '../common/colors.dart';
import '../common/common_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double width = 0;
  CommonWidget commonWidget;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    commonWidget = new CommonWidget();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Screen",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(int.parse(themeColor)),
            centerTitle: true,
            leading: commonWidget.getbackButton(context),
            title: Text(
              "Signup Screen",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 25.0, color: Colors.red),
            ),
          ),
          body: getBody()),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: commonWidget.getLogo()),
          commonWidget.getTextView("Email Id/ Mobile Number"),
          commonWidget.getEditText("Enter your email or mobile number"),
          commonWidget.getTextView("Password"),
          commonWidget.getEditText("Enter your password"),
          SizedBox(
              width: width,
              child: InkWell(
                child: commonWidget.getButton("Login"),
                onTap: openHomeScreen(),
              ))
        ],
      ),
    );
  }

  openHomeScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
