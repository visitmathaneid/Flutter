import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

void main() => runApp(MyRootWidget());

class MyRootWidget extends StatefulWidget {
  @override
  _MyRootWidgetState createState() => _MyRootWidgetState();
}

class _MyRootWidgetState extends State<MyRootWidget> {
  var _questions = const [
    {
      'question': 'what\'s your fav color?',
      'answers': ['red', 'green', 'blue', 'black']
    },
    {
      'question': 'what\'s your fav animal?',
      'answers': ['lion', 'tiger', 'dog']
    },
  ];

  //value is const so you cannot add/ remove item in the questions list.

  void _answerChosed(){
    setState(() {
      _questionsIndex++;
    });
  }

  var _questionsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mapping Widgets'),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[_questionsIndex]['question']),
            ...(_questions[_questionsIndex]['answers'] as List<String>).map((answer){
              return Answer(answer,_answerChosed);
            })
          ],
        ),
      ),
    );
  }
}

/*
* ...(_questions[_questionsIndex]['answer'] as List<String>).map((answer){
              return Answer(answer,_answerChosed);

              map is used to convert List of String answers to List of Widget. It will take each string answer and convert it
              into Answer Widget.

              ... is converting list of widgets to individual widgets and adding to Coloumn
* */
