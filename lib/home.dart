import 'package:flutter/material.dart';
import 'navigation_menu.dart';
import 'appBar.dart';
import 'carrousel.dart';
import 'searchBox.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bringere',
      // Scaffold is a layout for the major Material Components.
      home: Scaffold(
        appBar: appBar,
        body: Column(
          children: <Widget>[
            SizedBox(height: 5.0),
            SearchBox(),
            SizedBox(
              height: 8.0,
            ),
            NavigationMenu(),
            SizedBox(height: 5.0,),
            Carrousel(), 
          ],
        ),
      ),
    );
  }
}
