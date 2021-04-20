import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result({this.totalScore});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: this.totalScore > 25
          ? Text('Congrats, You are SUPER! ${this.totalScore}',
              style: TextStyle(color: Colors.green, fontSize: 40),
              textAlign: TextAlign.center)
          : Text(
              'You are so so with score ${this.totalScore}',
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),
              textAlign: TextAlign.center,
            ),
    );
  }
}
