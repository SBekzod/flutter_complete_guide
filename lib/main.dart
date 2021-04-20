import 'package:flutter/material.dart';
import 'package:complete_guide/question.dart';
import 'package:complete_guide/answer.dart';
import 'QuestionAnswers.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _number = 0;

  static const question = [
    {
      'question': 'programming language',
      'answers': ['NodeJS', 'Python', 'JAVA', 'PHP']
    },
    {
      'question': 'web framework',
      'answers': ['ExpressJS', 'Django', 'Spring', 'NESTJS']
    },
    {
      'question': 'animals',
      'answers': ['dog', 'horse', 'cat', 'another']
    }
  ];

  void gettingPressed(String type) {
    print('The chosen answer is: $type');
    setState(() {
      _number++;
      print('Question: $_number was answered!');
    });
  }

  @override
  Widget build(BuildContext ctx) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Application'),
        ),
        body: Column(
          children: <Widget>[
            Question(question[_number]['question']),
            ...(question[_number]['answers'] as List<String>).map((ele) {
              return Answer(gettingPressed, ele);
            }).toList()
          ],
        ),
      ),
    );
  }
}
