import 'package:flutter/material.dart';

const String _profilepic = 'assets/male-user-shadow.png';

class DrawerApp extends StatefulWidget {

@override
  State<StatefulWidget> createState() => _DrawerAppState();

}
class _DrawerAppState extends State<DrawerApp>{
@override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('هادی بهمنش'),
              accountEmail: const Text('09178145534'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage(
                  _profilepic,
                ),
              ),
             
              margin: EdgeInsets.zero,
            
            ),
            MediaQuery.removePadding(
              context: context,
              // DrawerHeader consumes top MediaQuery padding.
              removeTop: true,
              child: Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(top: 8.0),
                  children: <Widget>[
                    // The initial contents of the drawer
                    ListTile(
                      leading: const Icon(Icons.category),
                      title: const Text('دسته بندی ها'),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: const Icon(Icons.favorite),
                      title: const Text('نشان شده ها'),
                      onTap: (){},
                    ),
                    // The drawer's "details" view.
                    
                  ],
                ),
              ),
            ),
          ],
        );
  }

}