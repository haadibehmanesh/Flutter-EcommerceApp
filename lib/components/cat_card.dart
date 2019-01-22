// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//import '../../gallery/demo.dart';

class MyCard extends StatelessWidget {
  List<Widget> cards = new List.generate(4, (i) => new CustomCard());
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('رستوران و کافی شاپ'),
          backgroundColor: Colors.red,
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
        child: Card(
          child: new Column(
            children: <Widget>[
              new Container(
                constraints: new BoxConstraints.expand(
                  height: 200.0,
                ),
                alignment: Alignment.bottomLeft,
                padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new NetworkImage(
                            'https://boninja.com/storage/bi-products/December2018/rTT72xwlsvsER90Tgv4t.jpg'),
                        fit: BoxFit.cover)),
                child: new Text('Title',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),
              ),
              Row(children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Text(
                    'فست فود انجیر',
                    style: new TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.right,
                  ),
                ),
              ]),
              new Divider(
                color: Colors.red,
              ),
              new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Row(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Icon(Icons.thumb_up),
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text(
                          'Like',
                          style: new TextStyle(fontSize: 18.0),
                        ),
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Icon(Icons.comment),
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text('Comments',
                            style: new TextStyle(fontSize: 18.0)),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
