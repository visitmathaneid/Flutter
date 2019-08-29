import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  DateTime _selectedDate;

  void _onSubmit() {
    if (_titleController.text.isEmpty || _amountController.text.isEmpty ||
        _selectedDate == null) {
      return;
    }
    final title = _titleController.text;
    final amount = double.parse(_amountController.text);
    widget._createTransaction(title, amount, _selectedDate);
    Navigator.pop(context);
  }

  void _showDatePicker(BuildContext context) {
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime.now()).then((selValue){
          setState(() {
            _selectedDate = selValue;
          });
    });
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
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(_selectedDate == null
                      ? 'No Date Chosen!'
                      : 'Selected date is ${DateFormat.yMd('en').format(
                      _selectedDate)}'),
                ),
                FlatButton(child: Text('Select Date', style: Theme
                    .of(context)
                    .textTheme
                    .title
                    .copyWith(color: Colors.purple),), onPressed: (){_showDatePicker(context);},)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
                textColor: Theme
                    .of(context)
                    .primaryColor,
                onPressed: _onSubmit,
                child: Text(
                  'Add Transaction',
                  style: Theme
                      .of(context)
                      .textTheme
                      .title
                      .copyWith(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
