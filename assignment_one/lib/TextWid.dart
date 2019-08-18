import 'package:flutter/material.dart';

class TextWid extends StatelessWidget {

  final String _text;
  TextWid(this._text);
  @override
  Widget build(BuildContext context) {
    return Text(_text);
  }
}
