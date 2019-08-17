import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> _question;
  final Function _selectHandler;

  Quiz(this._question, this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(_question['question']),
        ...(_question['answers'] as List).map((answer) {
          return Answer(
              //simply passing the function we cannot pass the parameter score. so instead we create anonymous function and sending it to next screen.
              () => _selectHandler(answer['score']),
              answer);
        })
      ],
    );
  }
}
