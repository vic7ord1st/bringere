import 'package:flutter/material.dart';

class RegistrationCard extends StatelessWidget {
  final header;
  final price;

  RegistrationCard(this.header, this.price);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 60, left: 60, top: 40, bottom: 40),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text(
                header,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              color: Colors.grey[400],
              margin: EdgeInsets.only(bottom: 20),
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            ),
            Container(
              child: Text(
                '500mb images and 5G for Videos',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              alignment: Alignment.center,
            ),
            Container(
              margin: EdgeInsets.only(right: 60, left: 60, top: 20),
              child: Divider(height: 2, color: Colors.grey[400]),
            ),
            Container(
              child: Text(
                'Banner Ads',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              alignment: Alignment.center,
            ),
            Container(
              margin: EdgeInsets.only(right: 60, left: 60, top: 20),
              child: Divider(height: 2, color: Colors.grey[400]),
            ),
            Container(
              child: Text(
                'Advanced Stats',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  price,
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'kr',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 36,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(0),
              child: Text(
                'Monthly',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10,),
            RaisedButton(
              elevation: 2,
              color: Colors.green[500],
              animationDuration: Duration(seconds: 1),
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: Text(
                  'Subscribe',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {}, // Define function later
            ),
          ],
        ),
      ),
    );
  }
}
