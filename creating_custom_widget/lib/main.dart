import 'package:flutter/material.dart';
import './Questions.dart';
import './Questions_Styled.dart';

void main() => runApp(MyRootWidget());

class MyRootWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyRootWidgetState();
  }
}

class _MyRootWidgetState extends State<MyRootWidget> {
  var _questions = [
    'What\'s your favorite Color?',
    'What\'s your favorite Animal?'
  ];

  var _questionsIndex = 0;

  void _answerChosed() {
    setState(() {
      _questionsIndex++;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Creating Custom Widget'),
        ),
        body: Column(
          children: <Widget>[
            Questions(_questions[_questionsIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerChosed,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerChosed,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _answerChosed,
            ),
            Questions_Styled(_questions[_questionsIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerChosed,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerChosed,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _answerChosed,
            ),
          ],
        ),
      ),
    );
  }
}
