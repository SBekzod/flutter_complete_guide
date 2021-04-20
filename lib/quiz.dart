import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int number;
  final Function gettingPressed;

  Quiz(
      {@required this.question,
      @required this.number,
      @required this.gettingPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(this.question[number]['question']),
        ...(this.question[number]['answers'] as List<String>).map((ele) {
          return Answer(this.gettingPressed, ele);
        }).toList()
      ],
    );
  }
}
