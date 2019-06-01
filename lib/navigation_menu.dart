import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final text;
  final color;
  Buttons(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.0),
      padding: EdgeInsets.all(1.0),
      alignment: Alignment.center,
      child: new RaisedButton(
        color: color,
        elevation: 2.0,
        textColor: Colors.white,
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}

class NavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Buttons('Clothes', Colors.green),
        Buttons('Electronics', Colors.green),
        Buttons('Computers', Colors.green),
        Buttons('Services', Colors.green),
      ],
    );
  }
}