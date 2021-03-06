import 'package:flutter/material.dart';
import '../components/drawer_app.dart';
import 'package:scoped_model/scoped_model.dart';
import '../components/carousel_with_indicator.dart';
import '../components/home_cat.dart';
import '../components/bottom_navigation.dart';
import '../components/main_featured_scroll.dart';
import '../components/main_cat_scroll.dart';
import '../components/cat_card.dart';
import '../scoped-models/main.dart';
class MyHomePage extends StatefulWidget {
  final MainModel model;
  final String title;
  MyHomePage(this.model,this.title);

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
            
    
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xFF005AAA)),
        backgroundColor: Colors.white70,
        title: new Image.asset('assets/title.png'),
        actions: <Widget>[
          IconButton(//onPressed: (){print('');},
            icon: new Icon(
              Icons.notifications,
            ),
          ),
          IconButton(
            icon: new Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
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
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: new Text(
                        "???????? ????",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
            child: MainFeaturedScroll(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: new Text(
                        "?????????????? ?? ???????? ??????",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: new InkWell(
                        child: new Text(
                          "??????????",
                          style: TextStyle(color: Colors.green),
                        ),
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyCard(),
                              ),
                            ),
                      ),
                    ),
                    new Icon(
                      Icons.arrow_right,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
            child: MainCatScroll(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: new Text(
                        "???????????? ?? ??????????",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                        padding: const EdgeInsets.all(0.0),
                         child: new InkWell(
                        child: new Text(
                          "??????????",
                          style: TextStyle(color: Colors.green),
                        ),
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyCard(),
                              ),
                            ),
                      ),),
                    new Icon(
                      Icons.arrow_right,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
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

