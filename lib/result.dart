import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restartHandler;

  String get resultPhrase {
    String result;
    if (this.totalScore > 25) {
      result = 'Congrats, You are SUPER! ${this.totalScore}';
    } else {
      result = 'You are so so with score ${this.totalScore}';
    }
    return result;
  }

  Result({this.totalScore, this.restartHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(this.resultPhrase,
              style: TextStyle(color: Colors.green, fontSize: 40),
              textAlign: TextAlign.center),
          TextButton(
              onPressed: this.restartHandler,
              child: Text(
                'Restart the Quiz',
                style: TextStyle(color: Colors.purpleAccent, fontSize: 25),
              ))
        ],
      ),
    );
  }
}
