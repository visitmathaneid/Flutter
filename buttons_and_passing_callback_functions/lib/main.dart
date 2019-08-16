import 'package:flutter/material.dart';
import './Questions_Styled.dart';
import './Answer_Styled.dart';

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
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];
  var _questionIndex = 0;

  void buttonChosed() {
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
          title: Text('Passing Callback Functions Around and Styling Buttons'),
        ),
        body: Column(
          children: <Widget>[
            Questions_Styled(_questions[_questionIndex]),
            Answer_Styled(
              buttonChosed,
            ),
            Answer_Styled(
              buttonChosed,
            ),
            Answer_Styled(
              buttonChosed,
            ),
          ],
        ),
      ),
    );
  }
}
