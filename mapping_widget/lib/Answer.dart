import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;
  final String _answerText;

  Answer(this._answerText, this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          _answerText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        onPressed: _selectHandler,
        color: Colors.blue,
      ),
    );
  }
}
