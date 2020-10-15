import 'package:flutter/material.dart';
import '../common/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HomeScreen",
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Color(int.parse(themeColor)),
          leading: getbackButton(context),
          centerTitle: true,
          title: Text(
            "Home Screen",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 25.0, color: Colors.red),
          ),
        ),
      ),
    );
  }

  Widget getbackButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.red),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
