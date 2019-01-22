import 'package:flutter/material.dart';
import '../components/drawer_app.dart';
import '../components/carousel_with_indicator.dart';
import '../components/home_cat.dart';
import '../components/bottom_navigation.dart';
import '../components/main_featured_scroll.dart';
import '../components/main_cat_scroll.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xFF005AAA)),
        backgroundColor: Colors.white,
        title: new Image.asset('assets/title.png'),
      ),
      drawer: Drawer(
        child: DrawerApp(),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0),
            child: CarouselWithIndicator(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            child: HomeCat(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            child: MainFeaturedScroll(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            child: MainCatScroll(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationDemo(),
    );
  }
}