import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyRootWidget());

class MyRootWidget extends StatefulWidget {
  @override
  _MyRootWidgetState createState() => _MyRootWidgetState();
}

class _MyRootWidgetState extends State<MyRootWidget> {
  void _answerChosed() {
    setState(() {
      _questionIndex++;
    });
  }

  static const _questions = [
    {
      'question': 'what\'s your fav color?',
      'answers': ['red', 'blue', 'green', 'black']
    },
    {
      'question': 'what\'s your fav animal?',
      'answers': ['lion', 'tiger', 'dog']
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
            : Result(),
      ),
    );
  }
}
