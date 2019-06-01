import 'package:flutter/material.dart';

TextField textField = TextField(
  style: TextStyle(
    fontSize: 16.0,
    color: Colors.black,
  ),
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Enter location',
    contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.00),
  ),
);

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: 20.0,
            top: 10.0,
          ),
          width: 350.0,
          child: textField,
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.search),
          color: Colors.white30,
          padding: EdgeInsets.all(10.0),
        ),
      ],
    );
  }
}