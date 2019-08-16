import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionsText;

  //Constructor Shortcut
  Questions(this.questionsText);

  @override
  Widget build(BuildContext context) {
    return Text(questionsText);
  }
}
