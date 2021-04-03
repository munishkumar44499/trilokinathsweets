import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trilokinathsweets/ui/models/category_model.dart';
import '../common/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width / 100;
    height = MediaQuery.of(context).size.height / 100;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HomeScreen",
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            backgroundColor: Color(int.parse(themeColor)),
            leading: getbackButton(context),
            centerTitle: true,
            title: Text("Home Page")),
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              getImageSlider(),
              Expanded(child: getCategoryList()),
            ],
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

  /*
 * This Method is used to return slider
 * */
  Widget getImageSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: height * 20,
        aspectRatio: 16 / 9,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),
      items: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2eZa9cLQy1zgi7EGuu406dD10aNJheGFMYA&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2eZa9cLQy1zgi7EGuu406dD10aNJheGFMYA&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2eZa9cLQy1zgi7EGuu406dD10aNJheGFMYA&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2eZa9cLQy1zgi7EGuu406dD10aNJheGFMYA&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlPsH9U_vUbmvY4JF4hiUnEZMrLRy-mG8Ukw&usqp=CAU"
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Image(
              image: NetworkImage("$i"),
              fit: BoxFit.fitWidth,
            );
          },
        );
      }).toList(),
    );
  }

  /*
  * This Method is used to return the category list
  * */
  Widget getCategoryList() {
    var list = List.empty(growable: true);
    list.add(CategoryModel(1,"Cake","images/cake.png"));
    list.add(CategoryModel(1,"Chocklate","images/cake.png"));
    list.add(CategoryModel(1,"Birthday","images/cake.png"));
    list.add(CategoryModel(1,"Flowers","images/cake.png"));
    list.add(CategoryModel(1,"Combo","images/cake.png"));
    list.add(CategoryModel(1,"Combo","images/cake.png"));
    list.add(CategoryModel(1,"Combo","images/cake.png"));
    list.add(CategoryModel(1,"Combo","images/cake.png"));
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            width: 160,
            height: 160,
            margin: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage("images/cake.png"),fit: BoxFit.none, width: 160,height: 160,),

          );
        });
  }
}
