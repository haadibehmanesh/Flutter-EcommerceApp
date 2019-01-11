import 'package:flutter/material.dart';

class HomeCat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeCatState();
}

class _HomeCatState extends State<HomeCat> {
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        //padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: <String>[
          'http://boninja.com/storage/app/JwwK6RR2vmCv0ZlsJKRwu3tqvQRmr4BcCVHZQXuM.png',
          'http://boninja.com/storage/app/3ZORQTVN54pBN9sG3WPK9j3nOLsaCjZTR514oz7b.png',
          'http://boninja.com/storage/app/kxMV6nL0eqVbYoFOLqDZRQObQhxZPK3s9vTAGZVU.png',
          'http://boninja.com/storage/app/MWobRTit3EWuy8eudsRYnlq8hAjj8JYxW9lgibmV.png',
          'http://boninja.com/storage/app/IoQpAFEuSQTClZB4ghyTDXMruioZmT3EcYD7Z4sf.png',
          'http://boninja.com/storage/app/bQjieHHc54Y3ISjfwAnz7gGJwmq3d13fKbsq6imQ.png',
          'http://boninja.com/storage/app/6t7vqoQfq4JJ471YI2giuqMfXcVZEU8vUXGAd9rt.png',
          'http://boninja.com/storage/app/2F1MJaWgk30uzyv70PaIhB5tB6xbX9Dq4E6AAO88.png',
        ].map((String url) {
          return new GridTile(child: new Image.network(url, fit: BoxFit.cover));
        }).toList());
  }
}
