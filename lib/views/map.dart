import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class Map extends StatefulWidget{
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State <Map> {
  @override

  Widget build(BuildContext context){
    return
      Container(
          child: GoogleMap(
          initialCameraPosition: CameraPosition(target: LatLng(63.91, -145.25 ), zoom: 14),
        ),
      );
  }
}