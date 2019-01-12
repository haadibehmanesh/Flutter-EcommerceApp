import 'package:flutter/material.dart';
import '../components/drawer_app.dart';
import '../components/bottom_navigation.dart';

class ProductPage extends StatelessWidget {
  @override Widget build(BuildContext context) {
  
   return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xFF005AAA)),
        backgroundColor: Colors.white,
        title: const Text('product page', style: TextStyle(color: Color(0xFF005AAA))),
      ),
      drawer: Drawer(
        child: DrawerApp(),
      ),
      body: Center(
        child: Text('product page'),
      ),
      bottomNavigationBar: BottomNavigationDemo(),
    );;
    }
    
  }

