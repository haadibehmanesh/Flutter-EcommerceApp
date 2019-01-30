import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './pages/home.dart';
import 'package:scoped_model/scoped_model.dart';

import './scoped-models/main.dart';
import './models/product.dart';



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
     final MainModel model = MainModel();
    return ScopedModel<MainModel>(
      model: model,
      child: MaterialApp(
      title: appTitle,color: Colors.white,
      theme: ThemeData(fontFamily: 'Yekan'),
      //home: MyHomePage(title: appTitle),
      routes: {
         // '/': (BuildContext context) => AuthPage(),
        },
        onGenerateRoute: (RouteSettings settings) {
          final List<String> pathElements = settings.name.split('/');
          if (pathElements[0] != '') {
            return null;
          }
           return null;
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              builder: (BuildContext context) => MyHomePage(title: appTitle),);
        },
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
    ),);
  }
}


