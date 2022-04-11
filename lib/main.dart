import 'package:flutter/material.dart';
import 'routes.dart';
import 'navDraw.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
    theme: ThemeData(primarySwatch: Colors.grey),
    title: "Belajar Drawer",
    debugShowCheckedModeBanner: false,
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("CindullPhone"),
          ),
          drawer: DrawerNav(),
          body: Center(
            child: Text('UTS MOBILE', style: TextStyle(fontWeight: FontWeight.bold)),
          )
          // endDrawer: CustomDrawer(),
          // body: TabBarView(
          //   children: <Widget>[
          //     Playlist(),
          //     Collections(),
          //     Favorite()
          //   ],
          // )
          ));
}
