import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../pages/product/product.dart';

class MainFeaturedScroll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainFeaturedScrollState();
}

class _MainFeaturedScrollState extends State<MainFeaturedScroll> {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 200.0,
            child: new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemExtent: 150.0,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(8.0),
                          ),
                      child: new GestureDetector(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ProductPage()),
                            ),
                        child: Card(
                            child: Column(
                          children: <Widget>[
                            Container(
                              constraints: new BoxConstraints.expand(
                                height: 100.0,
                              ),
                              // alignment: Alignment.bottomRight,
                              // padding: new EdgeInsets.only(
                              //     right: 16.0, bottom: 8.0, left: 16.0),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(5.0),
                                  topRight: const Radius.circular(5.0),
                                ),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://boninja.com/storage/bi-products/December2018/rTT72xwlsvsER90Tgv4t.jpg'),
                                    fit: BoxFit.cover),
                              ), child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          new Center(
                                child: new Text(
                                  '50 %',
                                  style: new TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                        ],
                      ),
                            ),
                            new Row(children: <Widget>[
                              Expanded(
                                child: Container(
                                  color: Colors.white,
                                  child: new Padding(
                                    padding: new EdgeInsets.all(7.0),
                                    child: new Text(
                                      'فست فود انجیر',
                                      style: new TextStyle(
                                          color: Colors.black, fontSize: 12.0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        )),
                      )),
                );
              },
            ),
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
