import 'package:flutter/material.dart';

final tab = TabBar(
  tabs: <Tab>[
    Tab(icon: Icon(Icons.add_shopping_cart,size: 4),),
    Tab(icon: Icon(Icons.videocam, size: 4 ),),
    Tab(icon: Icon(Icons.settings, size: 4),),
    Tab(icon: Icon(Icons.payment, size: 4),)
  ],
);

class Registration extends StatefulWidget{

  
  @override
  _RegistrationState createState() => _RegistrationState();
  
}

class _RegistrationState extends State<Registration>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: PreferredSize(preferredSize: tab.preferredSize,
      child: Card(
        color: Colors.white,
        child: tab,
        elevation: 26,
      ),
      ),
    );
  }
}