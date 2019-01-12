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
              itemExtent: 170.0,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: CupertinoButton(
                        child: Card(),
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ProductPage()),
                            ),
                      ),
                    ),
                  ),
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
