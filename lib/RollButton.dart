import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ColorList.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int randomNumber = 1;
  Color color = Colors.black;
  ColorBank colour = ColorBank();

  void changeDiceFace() {
    setState(() {
      randomNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.fromLTRB(100, 80, 100, 80),
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: Image.asset(
              'images/dice$randomNumber.png',
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 1, horizontal: 70),
            child: FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                  color = colour.getColor();
                });
              },
              label: Text(
                "Roll",
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'PTSans'),
              ),
              elevation: 5,
              highlightElevation: 30,
              backgroundColor: color,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: Icon(
              Icons.favorite,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
