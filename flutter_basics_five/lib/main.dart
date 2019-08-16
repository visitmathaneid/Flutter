import 'package:flutter/material.dart';

void main() => runApp(MyRootWidget());

class MyRootWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyRootWidgetState();
  }
}

class _MyRootWidgetState extends State<MyRootWidget> {
  var _questionIndex = 0;

  var _questions = [
    'What\'s your favorite color?',
    'What\'s your favorite Animal?'
  ];

  void _answerChosed() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Making Private by adding _'),
        ),
        body: Column(
          children: <Widget>[
            Text(_questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerChosed,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerChosed,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerChosed,
            ),
          ],
        ),
      ),
    );
  }
}
