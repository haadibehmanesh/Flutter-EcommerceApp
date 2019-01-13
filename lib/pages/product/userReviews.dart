import 'package:flutter/material.dart';

class UserReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(14.0),
            child: new Text(
              "هادی : \n"
                  "بسیار لذت بردیم ممنون از بن اینجا",
              style: new TextStyle(
                  fontFamily: "Yekan",
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w200),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(14.0),
            child: new Text(
              "علی : \n"
                  "ممنون از بن اینجا",
              style: new TextStyle(
                  fontFamily: "Yekan",
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w200),
            ),
          ),
        ],
      ),
    );
  }
}
