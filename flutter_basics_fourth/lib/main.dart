import 'package:flutter/material.dart';

void main() => runApp(MyRootWidget());

class MyRootWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyRootWidgetState();
  }
}

class MyRootWidgetState extends State<MyRootWidget> {
  var questions = [
    'What\'s your favorite Color?',
    'What\'s your favorite Animal?'
  ];
  var index = 0;

  void answerChosed() {
    setState(() {
      index = index + 1;
    });
    print('Answer chosed!');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widget Basics'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[index]),
            RaisedButton(
              onPressed: answerChosed,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: answerChosed,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: answerChosed,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
