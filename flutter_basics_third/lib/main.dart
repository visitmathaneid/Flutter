import 'package:flutter/material.dart';

void main() => runApp(MyRootWidget());

class MyRootWidget extends StatelessWidget {
  void answerPressed() {
    print('Answer Chosed!');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Multiple Widgets Sample'),
        ),
        body: Column(
          children: <Widget>[
            Text('Question'),
            RaisedButton(child: Text('Answer 1'), onPressed: answerPressed),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 Chosed!')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer');
                  print('3 chosed!');
                }),
          ],
        ),
      ),
    );
  }
}
