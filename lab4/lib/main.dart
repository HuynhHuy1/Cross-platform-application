import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Ask Me Anything'),
      ),
      backgroundColor: Colors.cyan,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void _changeBall() {
    setState(() {
      ballNumber = _randomNum();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: _changeBall,
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }

  int _randomNum() {
    int num = Random().nextInt(5) + 1;
    return num;
  }
}