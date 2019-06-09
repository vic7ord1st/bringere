
import 'package:flutter/material.dart';
import 'navigation_menu.dart';
import 'carrousel.dart';
import 'searchBox.dart';
import 'map.dart';
import 'drawer.dart';


class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State <Home> {
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bringere',
      // Scaffold is a layout for the major Material Components.
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/logo.png',
              height: 40.0,
              width: 40.0,
            ),
          ),
          title: Text(''),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.green,
              ),
              tooltip: 'menu',
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
          ],
        ),
        drawer: Drawr(),
        body: Column(
          children: <Widget>[
            SizedBox(height: 5.0),
            SearchBox(),
            SizedBox(height: 8.0),
            NavigationMenu(),
            SizedBox(height: 5.0,),
            Container(
              height: 475,
              margin: EdgeInsets.all(0),
              child: 
              Stack(children: <Widget>[
                 Map(),
                 Container(
                     child: Carrousel(),
                   )
              ],
            ) ,
           )
          ]
        ),
      ),
    );//to be removed
 }
}