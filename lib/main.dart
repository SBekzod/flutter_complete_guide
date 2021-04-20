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

  void gettingPressed(String type) {
    print('The chosen answer is: $type');
    setState(() {
      _number++;
      print('Question: $_number was answered!');
    });
  }

  @override
  Widget build(BuildContext ctx) {
    var question = new QuestAnswers();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Application'),
        ),
        body: Column(
          children: <Widget>[
            Question(question.getQuestion(_number)),
            Column(
              children: [
                for (int i = 0; i < 4; i++)
                  Answer(this.gettingPressed, question.getAnswer(_number, i))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
