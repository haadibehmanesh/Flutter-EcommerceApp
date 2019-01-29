import 'package:flutter/material.dart';
import 'cat_card.dart';

class HomeCat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeCatState();
}

void _onTileClicked(String index) {
  debugPrint("You tapped on item $index");
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
          'http://boninja.com/storage/app/icon/ikvBh75bb8TbYnxmSDrOlFRHO3vKmtrdDQcB6RlT.png',
          'http://boninja.com/storage/app/icon/Wz7KeZRW2CTHbjEKrrAkZpe9h8Gh19vNXohdLAje.png',
          'http://boninja.com/storage/app/icon/XORsVmcB4L0qdiIcFsmM20fsBrl8mLgHjfnR1pbj.png',
          'http://boninja.com/storage/app/icon/oBrxfzn8s4xQ88VfmLMZ9sc2NA9kr3N0jLopt3d9.png',
          'http://boninja.com/storage/app/icon/TVC9k1PvhmUVLYHpunok4hJahlF8ScpijE4Q6Exv.png',
          'http://boninja.com/storage/app/icon/Er2ZhFC3cAsLz0px1ohp3ZtfNURQOrlcj0uTNByZ.png',
          'http://boninja.com/storage/app/icon/IEvZeLllrziANgc2gQPiBZNdtTM5F6KMI7Zls1mX.png',
          'http://boninja.com/storage/app/icon/2plwPht6uZF8EMNi0PbVoSI6P7CJIHLFctSLv5kw.png',
        ].map((String url) {
          return new GridTile(
            child: InkResponse(
              child: new Image.network(url, fit: BoxFit.cover),
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyCard(),
                    ),
                  ),
            ),
          );
        }).toList());
  }
}
