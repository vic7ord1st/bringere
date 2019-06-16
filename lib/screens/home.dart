import 'package:flutter/material.dart';
import '../views/navigation_menu.dart';
import '../views/carrousel.dart';
import '../views/searchBox.dart';
import '../views/map.dart';
import '../views/appBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bringere',
      // Scaffold is a layout for the major Material Components.
      home: Scaffold(
        appBar: appBar(' '),
        body: Column(children: <Widget>[
          SizedBox(height: 5.0),
          SearchBox(),
          SizedBox(height: 8.0),
          NavigationMenu(),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 475,
            margin: EdgeInsets.all(0),
            child: Stack(
              children: <Widget>[
                Map(),
                Container(
                  child: Carrousel(),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
