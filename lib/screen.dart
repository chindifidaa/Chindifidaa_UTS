import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'navDraw.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Roting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Inbox');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Outbox');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Spam');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Forums');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Promos');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Inbox extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List isi = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List title = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Inbox',
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              icon: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.grey,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(
                          "2h",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                      Text('' + isi[index]),
                    ]),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('' + title[index]),
                    Icon(Icons.star_border),
                  ],
                ),
              ),
            );
          },
          itemCount: nama.length,
        ),
      ),
    );
  }
}

class Outbox extends StatelessWidget {
  //Portofolio
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Outbox'),
      ),
      body: GridView.count(crossAxisCount: 1, children: <Widget>[]),
    );
  }
}

class Spam extends StatelessWidget {
  //Contact
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spam'),
      ),
      body: Center(),
    );
  }
}

class Forums extends StatelessWidget {
  //Setting
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forums'),
      ),
      body: Center(),
    );
  }
}

class Promos extends StatelessWidget {
  //Gallery
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promos'),
      ),
      body: GridView.count(crossAxisCount: 2, children: <Widget>[]),
    );
  }
}
