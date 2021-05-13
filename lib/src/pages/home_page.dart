import 'package:flutter/material.dart';
import 'package:flutter_dinamic_button_grid/src/utils/griddefiner.dart';

class HomePage extends StatelessWidget {
  int optnum = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: gridDefiner(optnum));
  }
}
