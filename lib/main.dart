import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Ask me anything'),
              backgroundColor: Colors.blue[900],
            ),
            backgroundColor: Colors.blue[200],
            body: Dice8(),
          ),
        ),
      ),
    );

class Dice8 extends StatefulWidget {
  @override
  _Dice8State createState() => _Dice8State();
}

class _Dice8State extends State<Dice8> {
  int response = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            response = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$response.png'),
      ),
    );
  }
}
