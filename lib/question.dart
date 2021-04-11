import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20) ,
      width: double.infinity,
      child:  Text(
        'The question: $text',
        style: TextStyle(color: Colors.purpleAccent, fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
