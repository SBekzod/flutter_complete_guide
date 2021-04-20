import 'package:complete_guide/quiz.dart';
import 'package:complete_guide/result.dart';
import 'package:flutter/material.dart';
import 'package:complete_guide/question.dart';
import 'package:complete_guide/answer.dart';
import 'questionAnswers.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _number = 0;
  final _question = [
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

  void _gettingPressed(String type) {
    print('The chosen answer is: $type');
    setState(() {
      this._number++;
      print('Question: ${this._number} was answered!');
    });
  }

  @override
  Widget build(BuildContext ctx) {
    var totalQuestions = this._question.length;
    print('this is totalQuestions value: $totalQuestions');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Application'),
        ),
        body: (this._number < totalQuestions)
            ? Quiz(
                number: this._number,
                gettingPressed: this._gettingPressed,
                question: this._question)
            : Result(),
      ),
    );
  }
}
