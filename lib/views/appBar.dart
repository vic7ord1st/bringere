import 'package:flutter/material.dart';

import '../drawer.dart';

final AppBar appBar = AppBar(
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
            PopupMenuButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onSelected: null,
              itemBuilder: (BuildContext context){
                return Drawr.menu.map((String choice){
                  return PopupMenuItem <String>(
                    value: choice,
                    child: Text(choice),
                  );
                }
                ).toList();
              },
            )
          ],
        );