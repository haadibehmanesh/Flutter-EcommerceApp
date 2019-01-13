import 'package:flutter/material.dart';
//import 'gredients.dart';
import './specification.dart';
import './productDesc.dart';
import './userReviews.dart';

var favnprice = new Padding(
  padding:
      const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0, bottom: 12.0),
  child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Row(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          new Text("علاقه مندی ها")
        ],
      ),
      new Row(
        children: <Widget>[
          
          new Text(
            "25,000",
            style: new TextStyle(fontSize: 35.0,color: Colors.green),
          ),new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "\تومان",
              style: new TextStyle(fontSize: 20.0,color: Colors.green),
            ),
          ),
          
        ],
      )
    ],
  ),
);

var soldnprice = new Padding(
  padding:
      const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 12.0),
  child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Row(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Icon(
              Icons.shopping_basket,
              color: Colors.grey,
            ),
          ),
          new Text("100")
        ],
      ),
      new Row(
        children: <Widget>[
          
          new Text(
            "50,000",
            style: new TextStyle(fontSize: 20.0,color: Colors.red),
          ),new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "\تومان",
              style: new TextStyle(fontSize: 20.0,color: Colors.red),
            ),
          ),
          
        ],
      )
    ],
  ),
);


var divider = new Divider();

var bottomBtns = new Padding(
  padding: const EdgeInsets.symmetric(horizontal: 30.0),
  child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Expanded(
        child: new InkWell(
          onTap: () {},
          child: new ClipRRect(
            borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
            child: new Container(
              decoration: new BoxDecoration(
                  //gradient: btnGradient,
                  color: Colors.green,
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                        blurRadius: 10.0,
                        color: Colors.black12,
                        offset: new Offset(0.0, 10.0))
                  ]),
              height: 60.0,
              child: new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48.0),
                child: new Center(
                  child: new Text(
                    "همین حالا خرید کنید",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      new Padding(
        padding: const EdgeInsets.all(10.0),
        child: new Container(
          width: 60.0,
          height: 60.0,
          decoration: new BoxDecoration(
              //gradient: btnGradient,
              color: Colors.orange,
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                new BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.black12,
                    offset: new Offset(0.0, 10.0))
              ]),
          child: new Icon(
            Icons.add_shopping_cart,
            size: 25.0,
            color: Colors.white,
          ),
        ),
      )
    ],
  ),
);

class Mfooter extends StatefulWidget {
  @override
  _MfooterState createState() => new _MfooterState();
}

class _MfooterState extends State<Mfooter> with SingleTickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  static TabController _controller;
  @override
  void initState() {
    super.initState();

    _tabs = [
      new Tab(
        child: new Text(
          "ویژگی ها",
          style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17.0),
        ),
      ),
      new Tab(
        child: new Text(
          "شرایط استفاده",
          style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17.0),
        ),
      ),
      new Tab(
        child: new Text(
          "نظرات",
          style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17.0),
        ),
      ),
    ];
    _pages = [new ProductDesc(), new Specification(), new UserReview()];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new TabBar(
          isScrollable: false,
          controller: _controller,
          tabs: _tabs,
          indicatorColor: Colors.blue,
        ),
        new Divider(
          height: 1.0,
        ),
        new SizedBox.fromSize(
          size: const Size.fromHeight(220.0),
          child: new TabBarView(
            controller: _controller,
            children: _pages,
          ),
        ),
      ],
    );
  }
}
