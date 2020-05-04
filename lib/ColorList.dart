import 'dart:math';

import 'package:flutter/material.dart';

Random num = Random.secure();
int number;

class ColorBank {
  List<Color> colours = [
    Colors.black,
    Colors.blueGrey,
    Colors.orange,
    Colors.green,
    Colors.brown,
    Colors.red,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
  ];

  ColorBank();

  Color getColor() {
    number = num.nextInt(10);
    return colours[number];
  }
}
