import 'package:flutter/material.dart';

AppBar appBar = AppBar(
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
      tooltip: 'Search',
      onPressed: null,
    ),
  ],
);