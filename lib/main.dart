import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    var question = [
      'What\'s your favorite programming language?',
      'What\'s your favorite framework?',
      'What\'s your favorite animals?',
      'What\'s your favorite movie?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Application: Let\'s Have a Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer one'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer two'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer three'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
