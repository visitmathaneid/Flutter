import 'package:flutter/material.dart';
import './chart.dart';
import './transaction_list.dart';
import './model/transaction.dart';
import './create_transaction.dart';
import './appbar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Transaction> _list = [];

  List<Transaction> get _recentTransactions {
    return _list.where((tx) {
      //returning only recent 7 days transactions
      return tx.dateTime.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
  }

  void _createTransaction(String title, double amount, DateTime selectedTime) {
    String tid = 't${_list.length + 1}';
    setState(() {
      _list.add(Transaction(
          id: tid, title: title, amount: amount, dateTime: selectedTime));
    });
  }

  void _deleteTransaction(String id) {
    String tid = 't${_list.length + 1}';
    setState(() {
      _list.retainWhere((tx) => id == tx.id);
    });
  }

  void _startAddTransaction(BuildContext buildContext) {
    showModalBottomSheet(
        context: buildContext,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: CreateTransaction(_createTransaction),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ExpenseAppBar(),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _startAddTransaction(context);
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _startAddTransaction(context);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Chart(_recentTransactions),
            TransactionList(_list,_deleteTransaction),
          ],
        ),
      ),
    );
  }
}
