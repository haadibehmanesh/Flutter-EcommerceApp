import 'package:flutter/material.dart';

import './drawer_app.dart';
import './carousel_with_indicator.dart';
import './home_cat.dart';
import './bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final appTitle = 'بن اینجا';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      builder: (BuildContext context, Widget child) {
        return new Directionality(
          textDirection: TextDirection.rtl,
          child: new Builder(
            builder: (BuildContext context) {
              return new MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1.0,
                ),
                child: child,
              );
            },
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);
  List<int> generateNumbers() => List<int>.generate(8, (i) => i + 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 2.0),
            child: HomeCat(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationDemo() ,
    );
  }
}
