import 'package:flutter/material.dart';

import 'inputWidget.dart';
import 'transaction.dart';
import 'transacionWidget.dart';

class userTransaction extends StatefulWidget {
  const userTransaction({Key? key}) : super(key: key);

  @override
  State<userTransaction> createState() => _userTransactionState();
}

class _userTransactionState extends State<userTransaction> {
  List<Transaction> transactions = [
    Transaction(amount: 2000, id: "2", date: DateTime.now(), name: "Groceries"),
  ];

  void _add(String idArg, double amountArg) {
    Transaction transaction = Transaction(
        amount: amountArg, id: "1", date: DateTime.now(), name: idArg);
    setState(() {
      transactions.add(transaction);
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWidget(_add),
        Column(
          children: transactions.map((tx) {
            return TransactionWidget(tx);
          }).toList(),
        ),
      ],
    );
  }
}
