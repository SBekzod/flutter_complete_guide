import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Congrats, You answered all of the question',
        style: TextStyle(color: Colors.green, fontSize: 40),
        textAlign: TextAlign.center,
      ),
    );
  }
}
