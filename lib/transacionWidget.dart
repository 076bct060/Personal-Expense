// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:personal_expense/transaction.dart';
import 'package:intl/intl.dart';

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
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            child: Text(
                "NRP \n${double.parse(transaction.amount.toString()).toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.titleMedium),
            // decoration: BoxDecoration(
            //     border: Border.all(color: Color.fromARGB(255, 216, 236, 0)),
            //     color: Colors.blue)
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(transaction.name.toString(),
                    style: Theme.of(context).textTheme.titleLarge),
                Text(
                  DateFormat().format(transaction.date as DateTime),
                ),
              ]),
        ],
      ),
    );
  }
}
