import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_expense/transaction.dart';

class TransactionWidget extends StatelessWidget {
  Transaction transaction;
  TransactionWidget(this.transaction);
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 20,
      child: Row(
        children: [
          Container(
              color: Colors.blue,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Text(transaction.amount.toString())),
          Column(children: <Widget>[
            Text(transaction.name.toString()),
            Text(transaction.date.toString())
          ]),
        ],
      ),
    );
  }
}
