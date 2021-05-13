import 'package:flutter/material.dart';

Widget gridDefiner(int optnum) {
  var positions = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  switch (optnum) {
    case 1:
      positions = [0, 1, 0, 0, 0, 0, 0, 0, 0];
      break;
    case 2:
      positions = [0, 1, 0, 0, 1, 0, 0, 0, 0];
      break;
    case 3:
      positions = [0, 1, 0, 1, 0, 1, 0, 0, 0];
      break;
    case 4:
      positions = [0, 1, 0, 1, 1, 1, 0, 0, 0];
      break;
    case 5:
      positions = [0, 1, 0, 1, 0, 1, 1, 0, 1];
      break;
    case 6:
      positions = [0, 1, 0, 1, 1, 1, 1, 0, 1];
      break;
    default:
  }
  return Center(
      child: GridView.count(
          //Just set shrinkWrap: true which makes the GridView to take minimum
          //space and wrap the GridView with Center widget.
          shrinkWrap: true,
          // Create a grid with 3 columns. If you change the scrollDirection to
          // horizontal, this produces 3 rows.
          crossAxisCount: 3,
          // Generate 12 widgets that display their index in the List.
          children: List.generate(9, (index) {
            if (positions[index] == 1) {
              return Container(
                color: Colors.amber,
                margin: EdgeInsets.all(10.0),
              );
            } else {
              return Container(
                //color: Colors.blue,
                margin: EdgeInsets.all(10.0),
              );
            }
          })));
}
