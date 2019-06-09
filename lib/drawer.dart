import 'package:flutter/material.dart';

class Drawr extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return 
    Container(
      alignment: Alignment.topRight,
      child: SizedBox(
        width: 200,
        child: Drawer(
          elevation: 3,
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              DrawerHeader(
                child: Text('Hello There'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTiles('Login/ Registration', (){}),
              SizedBox(height: 5.0,),
              ListTiles('Stores', (){})
            ],
          )
        ),
      )
    );
  }
}

class ListTiles extends StatelessWidget{
 final String title;
 final Function onTap;

 ListTiles(this.title, this.onTap);

@override
  Widget build(BuildContext build){
    return ListTile(
       title: Text(this.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,  
              ),
              ),
              onTap: onTap,
    );
  }
}