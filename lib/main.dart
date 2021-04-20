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
  var _totalScore = 0;
  final _question = [
    {
      'question': 'programming language',
      'answers': [
        {'text': 'NodeJS', 'score': 10},
        {'text': 'Python', 'score': 10},
        {'text': 'JAVA', 'score': 7},
        {'text': 'PHP', 'score': 7},
      ]
    },
    {
      'question': 'web framework',
      'answers': [
        {'text': 'ExpressJS', 'score': 9},
        {'text': 'Django', 'score': 9},
        {'text': 'Spring', 'score': 8},
        {'text': 'CodeIgniter', 'score': 6},
      ]
    },
    {
      'question': 'animals',
      'answers': [
        {'text': 'dog', 'score': 7},
        {'text': 'horse', 'score': 6},
        {'text': 'cat', 'score': 3},
        {'text': 'another', 'score': 5},
      ]
    }
  ];

  void _gettingPressed(String type, int score) {
    print('The chosen answer is: $type');
    setState(() {
      this._number++;
      this._totalScore += score;
      print('Question: ${this._number} was answered!');
    });
  }

  void _restartHandler() {
    setState(() {
      this._number = 0;
      this._totalScore = 0;
      print('The statistics set to zero!');
    });
  }

  @override
  Widget build(BuildContext ctx) {
    var totalQuestions = this._question.length;
    // print('this is totalQuestions value: $totalQuestions');

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
            : Result(
                totalScore: this._totalScore,
                restartHandler: this._restartHandler),
      ),
    );
  }
}
