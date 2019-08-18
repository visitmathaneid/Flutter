import 'package:flutter/material.dart';

class ButtonWid extends StatelessWidget {
  final Function _selectHandler;

  ButtonWid(this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: _selectHandler,
      child: Text('Change Text'),
    );
  }
}
