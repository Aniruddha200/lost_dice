import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RollButton.dart';

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.pink.shade50,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Lost Dice',
              style: TextStyle(color: Colors.black, fontFamily: 'PTSans'),
            ),
            backgroundColor: Colors.red.shade100,
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}
