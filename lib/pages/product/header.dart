import 'package:flutter/material.dart';
//import 'clipper.dart';
//import 'gredients.dart';
import 'customIcon.dart';

var _appbar = new Align(
  heightFactor: 0.35,
  child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: new IconButton(
            icon: new Icon(
              CustomIcons.menu,
              color: Colors.black87,
            ),
            onPressed: () {
              print("menu Clicked");
            },
            splashColor: Colors.black,
          )),
      new Expanded(
        child: new Container(),
      ),
      new Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: new Icon(
          Icons.shopping_cart,
          color: Colors.black87,
        ),
      )
    ],
  ),
);

var content = new Container(
  margin: new EdgeInsets.only(top: 5.0),
  child: new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        
        new Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
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
              new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text('زمین تنیس آزاد یونیک ۲',
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Yekan",
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal)),
                    new Padding(
                      padding: const EdgeInsets.only(left: 28.0, top: 12.0),
                      child: new Text("با 50 % تخفیف",
                          style: new TextStyle(
                            color: Colors.black87.withOpacity(.3),
                          )),
                    ),
                  ]),
              new Container(
                width: 50.0,
                height: 50.0,
                decoration: new BoxDecoration(
                    //gradient: btnGradient,
                    color: Color(0xFF005AAA),
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.black12,
                          offset: new Offset(0.0, 10.0))
                    ]),
                child: new Icon(
                  Icons.share,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ]),
);
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
      ),new Row(
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
          
          new Text(
            "50,000",
            style: new TextStyle(fontSize: 16.0,color: Colors.red,decoration: TextDecoration.lineThrough,),
          ),new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "\تومان",
              style: new TextStyle(fontSize: 16.0,color: Colors.red),
            ),
          ),
          
        ],
      ),new Container(
                width: 70.0,
                height: 70.0,
                decoration: new BoxDecoration(
                    //gradient: btnGradient,
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    ),
                child: Center(child: new Text(
                  '50 %', style: new TextStyle(fontSize: 22.0,color: Colors.white,fontWeight: FontWeight.bold),
        
                ),) 
              ), new Row(
        children: <Widget>[
          
          new Text(
            "25,000",
            style: new TextStyle(fontSize: 18.0,color: Colors.green),
          ),new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "\تومان",
              style: new TextStyle(fontSize: 18.0,color: Colors.green),
            ),
          ),
          
        ],
      )
    ],
  ),
);
class MHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 80.0,
      child: new Stack(
        children: <Widget>[
         
          new Align(
            alignment: FractionalOffset.center,
            heightFactor: 3.5,
            child: content,
          ),
          
        ],
      ),
    );
  }
}
