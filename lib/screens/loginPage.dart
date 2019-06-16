import 'package:flutter/material.dart';
import 'package:test_flutter/views/appBar.dart';
import '../views/loginPopup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(' '),
      body: Column(
        children: <Widget>[
          Container(
              height: 50,
              padding:
                  EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {}, //Define function later
                  ),
                  InkWell(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {}, //Define function later
                  )
                ],
              )),
          LoginPopUp(),
        ],
      ),
    );
  }
}
