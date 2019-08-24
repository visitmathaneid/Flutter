import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double amount;
  final double percOfTotal;

  ChartBar(this.label, this.amount, this.percOfTotal);

  @override
  Widget build(BuildContext context) {
    //Flexible widget used for manage the child item space
    return Flexible(
      fit: FlexFit.tight,
      child: Column(
        children: <Widget>[
          Container(
            //setting height for text widget to get even height of bar.
            height: 25,
            child: FittedBox(
              child: Text(
                '\$${amount.toStringAsFixed(0)}',
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ),
          SizedBox(height: 4),
          Container(
            height: 120,
            width: 20,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 2)),
                ),
                FractionallySizedBox(
                  heightFactor: percOfTotal,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 2)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
}
