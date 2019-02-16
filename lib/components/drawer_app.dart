import 'package:flutter/material.dart';
import '../pages/auth/auth.dart';
import '../pages/auth/logout.dart';

const String _profilepic = 'assets/male-user-shadow.png';

class DrawerApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Color(0xFF005AAA)),
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
               
               
                 
          Logout(),
          Divider(),
                ListTile(
                  leading: const Icon(Icons.category),
                  title: const Text('دسته بندی ها'),
                  onTap: () {},
                ),

                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('نشان شده ها'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text('درباره ما'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.call),
                  title: const Text('پشتیبانی'),
                  onTap: () {},
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
