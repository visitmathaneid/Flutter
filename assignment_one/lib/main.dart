import 'package:flutter/material.dart';
import './ButtonWid.dart';
import './TextWid.dart';

void main() => runApp(Assignment());

class Assignment extends StatefulWidget {
  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  var _text = 'initial';

  void _changeText() {
    setState(() {
      _text = 'Changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment one'),
        ),
        body: Column(
          children: <Widget>[
            TextWid(_text),
            ButtonWid(_changeText),
          ],
        ),
      ),
    );
  }
}
