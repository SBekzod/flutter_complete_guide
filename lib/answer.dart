import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.deepPurpleAccent,
          primary: Colors.purpleAccent
        ),
        child: Text('Answer one'),
        onPressed: () => {
          print('no specified')
        },
      ),
    );
  }
}
