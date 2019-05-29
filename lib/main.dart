import 'package:flutter/material.dart';
import 'package:carousel_widget/carousel_widget.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: TutorialHome(),
  ));
}

class Buttons extends StatelessWidget {
  final text;
  final color;
  Buttons(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.0),
      padding: EdgeInsets.all(1.0),
      alignment: Alignment.center,
      child: new RaisedButton(
        color: color,
        elevation: 2.0,
        textColor: Colors.white,
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}

class NavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Buttons('Clothes', Colors.green),
        Buttons('Electronics', Colors.green),
        Buttons('Computers', Colors.green),
        Buttons('Services', Colors.green),
      ],
    );
  }
}

AppBar appBar = AppBar(
  backgroundColor: Colors.white,
  leading: Container(
    margin: EdgeInsets.all(10.0),
    child: Image.asset(
      'assets/logo.png',
      height: 40.0,
      width: 40.0,
    ),
  ),
  title: Text(''),
  actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.menu,
        color: Colors.green,
      ),
      tooltip: 'Search',
      onPressed: null,
    ),
  ],
);

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
          onPressed: null,
          icon: Icon(Icons.search),
          color: Colors.white30,
          padding: EdgeInsets.all(10.0),
        ),
      ],
    );
  }
}

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
                Text(name),
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
            SizedBox(height: 10.0,),
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
                  color: Colors.green,
                  onPressed: (){},
                  child: Text('Shop Live',
                    style: TextStyle(
                      color: Colors.white,
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

class CarouselList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 300.0,
      child: Carousel(
        listViews: [
          Fragment(
            child: PopUp('Jigga Shop','5 Olusegun street'),
          ),
          Fragment(
            child: PopUp('Olumide shop', '21 Olusegun street'),
          ),
        ],
      ),
    );
  }
}

FloatingActionButton floatingActionButton = FloatingActionButton(
  tooltip: 'Add', // used by assistive technologies
  child: Icon(Icons.add),
  onPressed: null,
);

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bringere',
      // Scaffold is a layout for the major Material Components.
      home: Scaffold(
        appBar: appBar,
        body: Column(
          children: <Widget>[
            SizedBox(height: 5.0),
            SearchBox(),
            SizedBox(
              height: 8.0,
            ),
            NavigationMenu(),
            CarouselList(),
          ],
        ),
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
