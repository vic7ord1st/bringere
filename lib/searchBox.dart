import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

final databaseReference = FirebaseDatabase.instance.reference().child('1');

void getData() {
  databaseReference.once().then((DataSnapshot snapshot) {

    var _snapShot = snapshot.value;

    print('Data : $_snapShot');
  });
}

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
          onPressed: () {
            getData();
          },
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          color: Colors.white30,
          padding: EdgeInsets.all(10.0),
        ),
      ],
    );
  }
}
