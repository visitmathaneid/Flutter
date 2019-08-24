import 'package:flutter/material.dart';
import './model/transaction.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class ListItem extends StatelessWidget {
  final Transaction _transaction;

  ListItem(@required this._transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: <Widget>[
          AmountWidget(_transaction.amount.toStringAsFixed(2)),
          TitleDateWidget(_transaction.title, _transaction.dateTime)
        ],
      ),
    );
  }
}

class AmountWidget extends StatelessWidget {
  final String _amount;

  AmountWidget(@required this._amount);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Text(
        '\$${_amount}',
         style: Theme.of(context).textTheme.title.copyWith(color: Colors.purple),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class TitleDateWidget extends StatelessWidget {
  final String _title;
  final DateTime _dateTime;

  TitleDateWidget(@required this._title, @required this._dateTime);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('en');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          _title,
          style: Theme.of(context).textTheme.title,
        ),
        Text(
          DateFormat('MMM dd, yyyy','en').format(_dateTime),
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
