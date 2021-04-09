import 'package:flutter/material.dart';
import 'package:complete_guide/question.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _number = 0;

  void gettingPressed(int numb) {
    setState(() {
      _number++;
      print('Here is the number value: $_number');
    });
  }

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
            // Text(question.elementAt(_number)),
            Question(question.elementAt(_number)),
            ElevatedButton(
              child: Text('Answer one'),
              onPressed: () => {gettingPressed(1)},
            ),
            ElevatedButton(
              child: Text('Answer two'),
              onPressed: () => {gettingPressed(2)},
            ),
            ElevatedButton(
              child: Text('Answer three'),
              onPressed: () => {gettingPressed(3)},
            ),
          ],
        ),
      ),
    );
  }
}

