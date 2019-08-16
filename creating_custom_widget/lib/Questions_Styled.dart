import 'package:flutter/material.dart';

class Questions_Styled extends StatelessWidget {
  final String questionsText;

  //Constructor Shortcut
  Questions_Styled(this.questionsText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionsText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
