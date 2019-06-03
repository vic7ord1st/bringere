import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'popUp.dart';


class Carrousel extends StatefulWidget{
  @override
  _CarrouselState createState()=> _CarrouselState();
}

class _CarrouselState extends State <Carrousel>{
  @override
  Widget build(BuildContext context){
    return CarouselSlider(
      height: 200,
      items: <Widget>[
        PopUp('New Age Saloon','4534 Lakeshore drive'),
        PopUp('Magnificent looks','7, Thors Brine'),
        PopUp('Gregs Beef','Old Guards Boulevard'),
        PopUp('Jennys Shop','Allington Avenue')
      ],
      autoPlay: false,
      enableInfiniteScroll: false,
      onPageChanged: (index) {
         setState(() {
          }
        );
      },
    );
  }
}
