// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter/material.dart';
import '../pages/product/product.dart';

//import '../../gallery/demo.dart';

class MyCard extends StatelessWidget {
  List<Widget> cards = new List.generate(4, (i) => new CustomCard());
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            iconTheme: new IconThemeData(color: Color(0xFF005AAA)),
          title: new Text('رستوران و کافی شاپ',style: TextStyle(color: Color(0xFF005AAA)),),
          backgroundColor: Colors.white10,
        ),
        body: new Container(
            child: new ListView(
          children: cards,
        )));
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      top: false,
      bottom: false,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        //height: height,
        child: new GestureDetector(
          onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ProductPage()),
              ),
          child: new Card(
          
            child: Container(
                      decoration: new BoxDecoration(
    color: Colors.white,
      border: Border.all(color: Colors.black12),
      boxShadow: [new BoxShadow(
            color: Colors.black54,
            offset: Offset(1.0, 1.0),
            blurRadius: 5.0,
          ),]
    ),child: new Column(
              children: <Widget>[
                new Row(children: <Widget>[
                  Expanded(
                    child: Container(
                  
                      //color: Colors.white,
                      child: new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text(
                          'فست فود انجیر',
                          style: new TextStyle(
                              color: Colors.black54, fontSize: 18.0),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ),
                ]),
                new Container(
                  constraints: new BoxConstraints.expand(
                    height: 200.0,
                  ),
                  alignment: Alignment.bottomRight,
                  padding:
                      new EdgeInsets.only(right: 16.0, bottom: 8.0, left: 16.0),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new NetworkImage(
                            'https://boninja.com/storage/bi-products/December2018/rTT72xwlsvsER90Tgv4t.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Container(
                        width: 70.0,
                        height: 30.0,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(30.0)),
                            boxShadow: <BoxShadow>[
                              new BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10.0,
                                  offset: new Offset(0.0, 10.0))
                            ]),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            new Text("4.8")
                          ],
                        ),
                      ),
                      new Container(
                        width: 70.0,
                        height: 30.0,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(30.0)),
                            boxShadow: <BoxShadow>[
                              new BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10.0,
                                  offset: new Offset(0.0, 10.0))
                            ]),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.place,
                              color: Colors.red,
                            ),
                            new Text("شیراز")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                new Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Color(0xFF005AAA),
                      child: new Padding(
                        padding: new EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 2.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "50,000",
                                  style: new TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                new Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: new Text(
                                    "\تومان",
                                    style: new TextStyle(
                                        fontSize: 16.0, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            new Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: new BoxDecoration(
                                //gradient: btnGradient,
                                color: Colors.orange,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: new Text(
                                  '50 %',
                                  style: new TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "25,000",
                                  style: new TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                ),
                                new Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: new Text(
                                    "\تومان",
                                    style: new TextStyle(
                                        fontSize: 16.0, color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
             ), ),
          ),
        ),
      ),
    );
  }
}
