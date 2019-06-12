import 'package:flutter/material.dart';
import 'package:test_flutter/views/appBar.dart';

class Login extends StatefulWidget{

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State <Login> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.grey,
            child: Row(
              children: <Widget>[
                InkWell(
                  child: Text('Login',),
                ),
                InkWell(
                  child: Text('Register'),
                )
              ],
            )
          )
        ],
      ),
    
    );
  }
}