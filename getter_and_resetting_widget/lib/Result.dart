import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function _resetHandler;

  Result(this._totalScore, this._resetHandler);

  //Getter
  String get resultPhrase {
    var _resultStr;
    if (_totalScore <= 8) {
      _resultStr = 'you are innocent';
    } else if (_totalScore <= 13) {
      _resultStr = 'you are good';
    } else if (_totalScore <= 16) {
      _resultStr = 'you are strange';
    } else {
      _resultStr = 'you are bad';
    }
    return "Your result = $_resultStr";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 48),
        ),
        FlatButton(onPressed: _resetHandler, child: Text('Reset Quiz'),textColor: Colors.white,color: Colors.blue,)
      ],
    );
  }
}
