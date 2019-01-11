import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainCatScroll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainCatScrollState();
}

class _MainCatScrollState extends State<MainCatScroll> {
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
                      color: Colors.green,
                    ),
                    child: Center(
                      child: CupertinoButton(
                        child: Card(),
                        onPressed: () {},
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
