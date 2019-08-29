import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(ExpenseTracker());

class ExpenseTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //global font
          fontFamily: 'QuickSand',
          primarySwatch: Colors.purple,
          accentColor: Colors.amber,
          //application title kind of texts theme
          textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(fontFamily: 'OpenSans',fontSize: 18,fontWeight: FontWeight.bold)),
          //appbar title theme
          appBarTheme: AppBarTheme(textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(fontFamily: 'OpenSans',fontSize: 20))),
          buttonColor: Colors.purple
       ),
      home: Home(),
    );
  }
}
