import 'package:flutter/material.dart';
import './model/transaction.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import './chartbar.dart';

class Chart extends StatelessWidget {
  final List<Transaction> _recentTransactions;
  var totalSum = 0.0;

  Chart(this._recentTransactions);

  List<Map<String, Object>> get _getGroupedValues {
    initializeDateFormatting('en');
    return List.generate(7, (index) {
      var weekDay = DateTime.now().subtract(Duration(days: index));
      var daySum = 0.0;
      for (var tx in _recentTransactions) {
        if (tx.dateTime.day == weekDay.day &&
            tx.dateTime.month == weekDay.month &&
            tx.dateTime.year == weekDay.year) {
          daySum += tx.amount;
        }
      }
//      totalSum += daySum;
      return {
        'day': DateFormat.E('en').format(weekDay).substring(0, 1),
        'daySum': daySum
      };
    }).reversed.toList();//reversing it to acheive the current day result at right end
  }

  double get _getTotalSum{
    return _getGroupedValues.fold(0.0,(sum,item){
      return sum+item['daySum'];
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_getGroupedValues);
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      color: Colors.lightGreenAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ..._getGroupedValues.map((txObj) {
            return ChartBar(
                txObj['day'], txObj['daySum'], _getTotalSum == 0.0 ? 0.0 : (txObj['daySum'] as double) / _getTotalSum);
          }).toList()
        ],
      ),
    );
  }
}
