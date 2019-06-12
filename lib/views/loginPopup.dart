import 'package:flutter/material.dart';

class LoginPopUp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left: 50, top: 40, bottom: 10, right: 30),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("PARTNER LOGIN", 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                ),
              )
           ],
          ),
          SizedBox(
            height: 50,
          ),
          fieldSetter('Email', false),
          SizedBox(
            height: 35,
          ),
          fieldSetter('Password', true),
          SizedBox(
            height: 35,
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: InkWell(
              child: Text('Not a partner?',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
              onTap: (){} //Define function later
            )
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: RaisedButton(
              elevation: 2,
              color: Colors.green,
              animationDuration: Duration(seconds: 1),
              child: Container(
                padding: EdgeInsets.only(left: 120, right: 120, top: 10, bottom: 10),
                child:Text('Log in',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )
              ),
              onPressed: (){}, // Define function later
            ),
          )
        ],
      ),
    );
  }
}
 
TextField fieldSetter(String hintText, bool obscureText){
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Colors.grey[300],
        fontSize: 16,
      ),
      decoration: InputDecoration(
        hintText: hintText,
      )
    );     
 }