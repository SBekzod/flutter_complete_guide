import 'package:flutter/material.dart';
import 'package:complete_guide/question.dart';
import 'package:complete_guide/answer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _number = 0;

  void gettingPressed(String type) {
    print('the button type: $type');
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
          title: Text('My Application'),
        ),
        body: Column(
          children: <Widget>[
            // Text(question.elementAt(_number)),
            Question(question.elementAt(_number)),
            Answer(this.gettingPressed),
            Answer(gettingPressed),
            Answer(gettingPressed),
          ],
        ),
      ),
    );
  }
}
