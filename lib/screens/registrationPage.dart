import 'package:flutter/material.dart';
import '../views/appBar.dart';
import '../views/loginPopup.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool _isTitle = false;
  bool _isVideocam = false;
  bool _isDashBoard = false;
  bool _isPayment = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Store details'),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.all(0),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                iconSetter(Icons.title, 50,
                    _isTitle ? Colors.green : Colors.grey[400], 1),
                iconSetter(Icons.videocam, 50,
                    _isVideocam ? Colors.green : Colors.grey[400], 2),
                iconSetter(Icons.dashboard, 50,
                    _isDashBoard ? Colors.green : Colors.grey[400], 3),
                iconSetter(Icons.payment, 50,
                    _isPayment ? Colors.green : Colors.grey[400], 4)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ListView(scrollDirection: Axis.vertical,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                fieldSetter('Store Name', false),
                SizedBox(
                  height: 10,
                ),
                fieldSetter('Address', false),
                SizedBox(
                  height: 10,
                ),
                fieldSetter('Password', true),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: RaisedButton(
                    elevation: 2,
                    color: Colors.green,
                    animationDuration: Duration(seconds: 1),
                    child: Container(
                        padding: EdgeInsets.only(
                            left: 120, right: 120, top: 10, bottom: 10),
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )),
                    onPressed: () {}, // Define function later
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void colorSetter(int i) {
    switch (i) {
      case 1:
        {
          _isTitle = !_isTitle;
        }
        break;
      case 2:
        {
          setState(() {
            _isVideocam = !_isVideocam;
          });
        }
        break;
      case 3:
        {
          setState(() {
            _isDashBoard = !_isDashBoard;
          });
        }
        break;
      case 4:
        {
          setState(() {
            _isPayment = !_isPayment;
          });
        }
    }
  }

  IconButton iconSetter(IconData icon, double size, Color color, int key) {
    return IconButton(
      iconSize: size,
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () => colorSetter(key),
    );
  }
}
