import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int left1 = 1, right1 = 1, left2 = 2, right2 = 2, left3 = 3, right3 = 3;
  void getNumber1() {
    setState(() {
      left1 = Random().nextInt(6) + 1;
      right1 = Random().nextInt(6) + 1;
    });
  }

  void getNumber2() {
    setState(() {
      left2 = Random().nextInt(6) + 1;
      right2 = Random().nextInt(6) + 1;
    });
  }

  void getNumber3() {
    setState(() {
      left3 = Random().nextInt(6) + 1;
      right3 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    getNumber1();
                  },
                  child: Image.asset('images/dice$left1.png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    getNumber1();
                  },
                  child: Image.asset('images/dice$right1.png'),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    getNumber2();
                  },
                  child: Image.asset('images/dice$left2.png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    getNumber2();
                  },
                  child: Image.asset('images/dice$right2.png'),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    getNumber3();
                  },
                  child: Image.asset('images/dice$left3.png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    getNumber3();
                  },
                  child: Image.asset('images/dice$right3.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
