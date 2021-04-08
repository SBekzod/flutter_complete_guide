import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  void gettingPressed(int numb) {
    print('You pressed one of the buttons name $numb');
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
            Text('The Question!'),
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
