import 'package:flutter/material.dart';

void main() => runApp(MyRootWidget());

class MyRootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flex and Expand'),
        ),
        body: Column(
          children: <Widget>[
            //Normal Alignment
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ChildContainer('Big Text widget large text', Colors.green),
                ChildContainer('Small Text Widget', Colors.amber),
                ChildContainer('V Small', Colors.red),
              ],
            ),
            //Expanded or Flexible with fit: FlexFit.tight both are same.
            //other 2 items takes the space its needed and second item takes remaining space.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ChildContainer('Big Text widget large text', Colors.green),
                Expanded(
                    child: ChildContainer('Small Text Widget', Colors.amber)),
                ChildContainer('V Small', Colors.red),
              ],
            ),
            //Flexible with fit loose is same as normal. Tight will take the remaining full space since the other item defined loose it doesn't allow the second item to take full space
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ChildContainer('Big Text ', Colors.green),
                Flexible(
                    fit: FlexFit.tight,
                    child: ChildContainer('Small Text Widget', Colors.amber)),
                Flexible(
                  fit: FlexFit.loose,
                    child: ChildContainer('V Small', Colors.red)),
              ],
            ),
            //First item takes its size and remaining space equally splitted between remaining 2.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ChildContainer('Big Text widget large text', Colors.green),
                Expanded(
                    child: ChildContainer('Small Text Widget', Colors.amber)),
                Expanded(child: ChildContainer('V Small', Colors.red)),
              ],
            ),
            //Equal Space Widgets
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                    child: ChildContainer(
                        'Big Text widget large text', Colors.green)),
                Expanded(
                    child: ChildContainer('Small Text Widget', Colors.amber)),
                Expanded(child: ChildContainer('V Small', Colors.red)),
              ],
            ),
            //first item takes the space its needed. and remaining 2 sharing the space as 3: 2 ratio depends on its flex value.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ChildContainer('Big Text widget large text', Colors.green),
                Expanded(
                    flex: 3,
                    child: ChildContainer('Small Text Widget', Colors.amber)),
                Expanded(flex: 2, child: ChildContainer('V Small', Colors.red)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChildContainer extends StatelessWidget {
  final MaterialColor _color;
  final String _text;

  ChildContainer(this._text, this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      height: 100,
      child: Text(_text),
    );
  }
}
