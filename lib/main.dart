import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './pages/home.dart';
import './pages/auth/auth.dart';
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
  final MainModel _model = MainModel();
  bool _isAuthenticated = false;
  @override
  void initState() {
    _model.autoAuthenticate();
    _model.userSubject.listen((bool isAuthenticated) {
      setState(() {
        _isAuthenticated = isAuthenticated;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('building main page');
    return ScopedModel<MainModel>(
      model: _model,
      child: MaterialApp(
        title: appTitle, color: Colors.white,
        theme: ThemeData(fontFamily: 'Yekan'),
        //home: MyHomePage(title: appTitle),
        routes: {
          '/': (BuildContext context) =>
              !_isAuthenticated ? AuthPage() : MyHomePage(_model, appTitle),
        },
        onGenerateRoute: (RouteSettings settings) {
          if(!_isAuthenticated){
            return MaterialPageRoute(
            builder: (BuildContext context) => AuthPage(),
          );
          }
          final List<String> pathElements = settings.name.split('/');
          if (pathElements[0] != '') {
            return null;
          }
          return null;
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) => !_isAuthenticated ? AuthPage() : MyHomePage(_model, appTitle),
          );
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
      ),
    );
  }
}
