import 'package:flutter/material.dart';

List<String> light = ["up to 500MB/ 500G", "Banner Ads", " Advance Stats"];
List<String> plus = ["$light", "Marketing tools", "private link sharing"];
List<String> pro = [
  "$plus",
  "More private link sharing",
  "More Private matters"
];

var card = Container(
  height: 300,
    child: Column(
      children: <Widget>[
        Container(
          color: Colors.grey[300],
          margin: EdgeInsets.only(
            left: 0,
            right: 0,
            top: 0,
          ),
          child: Text(
            "LIGHT",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        // ListView.builder(
        //   itemBuilder: _buildListItem,
        //   itemCount: light.length,
        // ),
      ],
    ),
);

// Widget _buildListItem(BuildContext context, int index) {
//   return Row(
//     children: <Widget>[
//       Text(light[index],
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
//     ],
//   );
// }
