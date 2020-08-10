import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.cyan.shade400,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            centerTitle: true,
            backgroundColor: Colors.cyan.shade900,
          ),
          body: magic(),
        ),
      ),
    );

// ignore: camel_case_types
class magic extends StatefulWidget {
  @override
  _magicState createState() => _magicState();
}

// ignore: camel_case_types
class _magicState extends State<magic> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
