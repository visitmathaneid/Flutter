import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyRootWidget());

class MyRootWidget extends StatefulWidget {
  @override
  _MyRootWidgetState createState() => _MyRootWidgetState();
}

class _MyRootWidgetState extends State<MyRootWidget> {
  var _totalScore = 0;

  void _answerChosed(final int score) {
    setState(() {
      _totalScore += score;
      _questionIndex++;
    });
  }

  static const _questions = [
    {
      'question': 'what\'s your fav color?',
      'answers': [
        {'text': 'red', 'score': 8},
        {'text': 'blue', 'score': 5},
        {'text': 'green', 'score': 3},
        {'text': 'black', 'score': 10},
      ]
    },
    {
      'question': 'what\'s your fav animal?',
      'answers': [
        {'text': 'lion', 'score': 9},
        {'text': 'tiger', 'score': 6},
        {'text': 'dog', 'score': 3}]
    }
  ];

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Conditional And Splitting App into Widgets'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions[_questionIndex], _answerChosed)
            : Result(_totalScore),
      ),
    );
  }
}
