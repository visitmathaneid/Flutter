import 'package:flutter/material.dart';

class Questions_Styled extends StatelessWidget {
  final String _questionsText;

  Questions_Styled(this._questionsText);

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(_questionsText, textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),),
    );
  }
}
