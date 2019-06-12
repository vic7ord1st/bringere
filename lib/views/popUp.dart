import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  final name;
  final address;

  PopUp(this.name, this.address); //Pop Up constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.headset),
                  onPressed: () {},
                  color: Colors.red,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(address,
                  style: TextStyle(
                      color: Colors.grey, 
                      fontStyle: FontStyle.italic,
                      fontSize: 12.0
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(children: <Widget>[
                    Icon(
                      Icons.videocam,
                      color: Colors.black,
                      size: 40.0,
                    ),
                    Text('Live Stream', 
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                     ),
                    ),
                  ],
                ),
                RaisedButton(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                  color: Colors.green,
                  onPressed: (){},
                  child: Text('Shop Live',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
