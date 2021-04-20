import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.purpleAccent,
          textStyle: TextStyle(fontSize: 30),
        ),
        child: Text('Answers one'),
        onPressed: () => {
          this.selectHandler('ordinary'),
          print('* the button was pressed *')
        },
      ),
    );
  }
}
