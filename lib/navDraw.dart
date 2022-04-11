import 'package:flutter/material.dart';

class DrawerNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.move_to_inbox,
              text: 'Inbox',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Inbox');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.send,
              text: 'Outbox',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Outbox');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.new_releases,
              text: 'Spam',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Spam');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.question_answer,
              text: 'Forums',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Forums');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.announcement,
              text: 'Promos',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Promos');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/chindii.jpeg'), fit: BoxFit.cover),
    ),
    // otherAccountsPictures: [
    //   ClipOval(
    //     child: Image(image: NetworkImage('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'), fit: BoxFit.cover),
    //   ),
    //   ClipOval(
    //     child: Image(image: NetworkImage('https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80'), fit: BoxFit.cover),
    //   )
    // ],
    accountName: Text('Chindi Fidaro aini'),
    accountEmail: Text('chindifida8@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(child: _tabBar, color: Colors.white);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
