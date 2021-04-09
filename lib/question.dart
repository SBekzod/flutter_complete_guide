import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  String text = '';
  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Text('The question: $text');
  }
}

