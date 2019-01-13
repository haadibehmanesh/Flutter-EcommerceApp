import 'package:flutter/material.dart';

class ProductDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.all(14.0),
          child: new Text(
            "زمین تنیس آزاد مجموعه یونیک \t"
                "تاثیرات تنیس بر زندگی شما: \t"
                "مصرف کالری \n"
                "تقویت عضلات \n"
                "زندگی شادابتر \n"
                "تفریحی هیجان انگیز  \n"
                "مجموعه یونیک: \n"
                "دارای محیطی استاندارد \n"
                "ارایه توپ و راکت به صورت پرداخت جداگانه در محل. \n"
                " جهت استفاده از زمین حتما از قبل رزرو کنید.  \n"
                "ارایه توپ و راکت به صورت پرداخت جداگانه در محل. \n"
                " استفاده از زمین شامل روزهای پنج شنبه و جمعه نمی باشد.  \n",
            style: new TextStyle(
                fontFamily: "Yekan",
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w200),
          ),
        ),
      ],
    ),);
  }
}
