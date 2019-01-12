import 'package:flutter/material.dart';
//import '../components/drawer_app.dart';
import '../../components/bottom_navigation.dart';
import 'header.dart';
import 'footer.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Row toolbar = new Row(children: <Widget>[
      new Expanded(
          child: const Text('محصول ویژه',
              style: TextStyle(color: Color(0xFF005AAA)))),
      //new Icon(Icons.arrow_forward)
    ]);
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xFF005AAA)),
        backgroundColor: Colors.white,
        title: toolbar,
      ),
     /* drawer: Drawer(
        child: DrawerApp(),
      ),*/
      body: new ListView(
      children: <Widget>[
        new MHeader(),
        favnprice,
        divider,
        new Mfooter(),
        bottomBtns
      ],
    ),
     //bottomNavigationBar: BottomNavigationDemo(),
    );
  }
}
