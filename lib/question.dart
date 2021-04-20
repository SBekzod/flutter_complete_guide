import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        'What is your favorite ${this.text}',
        style: TextStyle(color: Colors.black87, fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
