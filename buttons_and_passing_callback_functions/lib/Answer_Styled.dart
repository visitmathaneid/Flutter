import 'package:flutter/material.dart';

class Answer_Styled extends StatelessWidget {
  final Function _answerChosed;

  Answer_Styled(this._answerChosed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: RaisedButton(
        child: Text('Answer 1'),
        onPressed: _answerChosed,
        color: Colors.blue,
      ),
    );
  }
}
