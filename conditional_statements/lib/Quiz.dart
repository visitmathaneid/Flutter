import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {

  final Map<String, Object> _question;
  final Function _selectHandler;

  Quiz(this._question,this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(_question['question']),
      ...(_question['answers'] as List).map((answer){
        return Answer(_selectHandler,answer);
      })
    ],);
  }
}
