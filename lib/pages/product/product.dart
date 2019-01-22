import 'package:flutter/material.dart';
//import '../components/drawer_app.dart';
//import '../../components/bottom_navigation.dart';
import 'product_timer.dart';
import '../../components/carousel_product.dart';
import 'header.dart';
import 'footer.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Row toolbar = new Row(children: <Widget>[
      new Expanded(
          child: const Text('زمین تنیس آزاد یونیک ۲',
              style: TextStyle(color: Color(0xFF005AAA)))),
      
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
          CarouselProduct(),
          new MHeader(),
          
          favnprice,
          //new ProductTimer(),
          divider,
          soldnprice,
          divider,
          new Mfooter(),
          bottomBtns
        ],
      ),
      //bottomNavigationBar: BottomNavigationDemo(),
    );
  }
}
