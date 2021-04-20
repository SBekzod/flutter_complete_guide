import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  String get resultPhrase {
    String result;
    if (this.totalScore > 25) {
      result = 'Congrats, You are SUPER! ${this.totalScore}';
    } else {
      result = 'You are so so with score ${this.totalScore}';
    }
    return result;
  }

  Result({this.totalScore});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
          style: TextStyle(color: Colors.green, fontSize: 40),
          textAlign: TextAlign.center),
    );
  }
}
