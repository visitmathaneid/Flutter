import 'package:flutter/material.dart';

class CreateTransaction extends StatefulWidget {
  final Function _createTransaction;

  CreateTransaction(this._createTransaction);

  @override
  State<StatefulWidget> createState() {
    return CreateTransactionState();
  }
}

class CreateTransactionState extends State<CreateTransaction> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();

  void _onSubmit() {
    if (_titleController.text.isEmpty || _amountController.text.isEmpty) {
      return;
    }
    final title = _titleController.text;
    final amount = double.parse(_amountController.text);
    widget._createTransaction(title, amount);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: _titleController,
              onSubmitted: (_) => _onSubmit(),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: _amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _onSubmit(),
            ),
          ),
          FlatButton(
              textColor: Theme.of(context).primaryColor,
              onPressed: _onSubmit,
              child: Text('Add Transaction',style: Theme.of(context).textTheme.title.copyWith(color: Colors.purple),)),
        ],
      ),
    );
  }
}
