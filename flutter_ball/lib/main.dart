import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Center(
            child: Text(
              "Ask Me Anything",
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),
        body: FlutterBall(),
        backgroundColor: Colors.blue[300],
      ),
    );
  }
}

class FlutterBall extends StatefulWidget {
  @override
  _FlutterBallState createState() => _FlutterBallState();
}

class _FlutterBallState extends State<FlutterBall> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          child: Center(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    ballNumber = 1 + Random().nextInt(5);
                  });

                },
                child: Image.asset('images/ball$ballNumber.png')),
          ),
        ),
      ],
    );
  }
}
