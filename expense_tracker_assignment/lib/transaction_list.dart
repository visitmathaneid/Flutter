import 'package:flutter/material.dart';
import './model/transaction.dart';
import './list_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactionList;

  TransactionList(@required this._transactionList);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      child: _transactionList.isEmpty
          ? NoItemsWidget()
          : ListView.builder(
              itemBuilder: ((ctx, index) {
                return ListItem(_transactionList[index]);
              }),
              itemCount: _transactionList.length,
            ),
    );
  }
}

class NoItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'No Items Available',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 200,
            width: 200,
            child: Image.asset(
              'assets/images/waiting.png',
              fit: BoxFit.contain,
            ))
      ],
    );
  }
}
