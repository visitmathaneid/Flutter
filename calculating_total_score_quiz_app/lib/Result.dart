import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  Result(this._totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You Did It! You have $_totalScore negativity points',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 48),
      ),
    );
  }
}
