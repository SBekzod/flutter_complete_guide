import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.purpleAccent,
          textStyle: TextStyle(fontSize: 24),
        ),
        child: Text('It is ${this.answer}'),
        onPressed: this.selectHandler,
      ),
    );
  }
}
