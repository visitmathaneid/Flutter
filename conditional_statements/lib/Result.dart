import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You Did It!',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 48),
      ),
    );
  }
}
