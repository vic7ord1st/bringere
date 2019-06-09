import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final text;
  final _color;
  Buttons(this.text, this._color);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.0),
      padding: EdgeInsets.all(1.0),
      alignment: Alignment.center,
      child: new RaisedButton(animationDuration: Duration(seconds: 2),
        color: _color,
        elevation: 2.0,
        textColor: Colors.white,
        onPressed: () {
         
        },
        child: Text(text),
      ),
    );
  }
}

class NavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Buttons('Clothes', Colors.green),
          Buttons('Electronics', Colors.green),
          Buttons('Computers', Colors.green),
          Buttons('Services', Colors.green),
        ],
      )
    );
  }
}