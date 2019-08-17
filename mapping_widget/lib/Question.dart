import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionsText;

  Question(this._questionsText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _questionsText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 48,
          color: Colors.black,
        ),
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}
