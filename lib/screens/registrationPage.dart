import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../views/appBar.dart';
import '../views/loginPopup.dart';
import '../views/registration_card.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool _isTitle = true;
  bool _isVideocam = false;
  bool _isDashBoard = false;
  bool _isPayment = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Store details'),
      body: SingleChildScrollView(
        child: Column(
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
                child: sort()),
          ],
        ),
      ),
    );
  }

  void colorSetter(int i) {
    switch (i) {
      case 1:
        {
          setState(() {
            _isTitle = !_isTitle;
            _isVideocam = false;
            _isDashBoard = false;
            _isPayment = false;
          });
        }
        break;
      case 2:
        {
          setState(() {
            _isVideocam = !_isVideocam;
            _isTitle = false;
            _isDashBoard = false;
            _isPayment = false;
          });
        }
        break;
      case 3:
        {
          setState(() {
            _isDashBoard = !_isDashBoard;
            _isVideocam = false;
            _isTitle = false;
            _isPayment = false;
          });
        }
        break;
      case 4:
        {
          setState(() {
            _isPayment = !_isPayment;
            _isDashBoard = false;
            _isVideocam = false;
            _isTitle = false;
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

  var listView = ListView(
    controller:
        ScrollController(keepScrollOffset: true, initialScrollOffset: 1),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    children: <Widget>[
      SizedBox(
        height: 20,
      ),
      fieldSetter('Store Name', false),
      SizedBox(
        height: 20,
      ),
      fieldSetter('Address', false),
      SizedBox(
        height: 20,
      ),
      fieldSetter('Password', true),
      SizedBox(
        height: 50,
      ),
      Container(
        child: RaisedButton(
          elevation: 2,
          color: Colors.green,
          animationDuration: Duration(seconds: 1),
          child: Container(
            padding:
                EdgeInsets.only(left: 120, right: 120, top: 10, bottom: 10),
            child: Text(
              'Log in',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          onPressed: () {}, // Define function later
        ),
      )
    ],
  );



  Widget sort() {
    if (_isTitle) {
      return listView;
    } else if (_isPayment) {
      return   Container(
        margin: EdgeInsets.only(bottom: 40),
        alignment: Alignment.topLeft,
      child: StatefulBuilder(
       builder: (ctx, StateSetter setState) => 
          CarouselSlider(
            //enlargeCenterPage: true,
            height: 550,
            items: <Widget>[
              RegistrationCard('Light', '49'),
              RegistrationCard('Pro', '100')
            ],
            autoPlay: false,
            enableInfiniteScroll: false,
            onPageChanged: (index) {
          setState(() {
            }
          );
        },
       )
      )
    );
    } else
      return null;
  }
}
