import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;
  final Map<String,Object> _answerObj;

  Answer(this._selectHandler, this._answerObj);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      color: Colors.blue,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: _selectHandler,
        child: Text(
          _answerObj['text'],
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
