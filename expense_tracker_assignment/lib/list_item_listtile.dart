import 'package:flutter/material.dart';
import './model/transaction.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class ListItemListTile extends StatelessWidget {
  final Transaction _transaction;

  ListItemListTile(@required this._transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Padding(
        padding: EdgeInsets.all(6),
        child: ListTile(
          leading: CircleAvatar(
            radius: 40,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                '\$${_transaction.amount.toStringAsFixed(0)}',
                style: Theme.of(context)
                    .textTheme
                    .title.copyWith(color: Colors.white),
              ),
            ),
          ),
          title: Text(
            _transaction.title,
            style: Theme.of(context).textTheme.title,
          ),
          subtitle: Text(
            DateFormat('MMM dd, yyyy', 'en').format(_transaction.dateTime),
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
