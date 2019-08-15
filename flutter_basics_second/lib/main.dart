import 'package:flutter/material.dart';

void main() {
  runApp(MyRootWidget());
}

class MyRootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Application App Bar"),
        ),
        body: Text("Application body widget"),
      ),
    );
  }
}
