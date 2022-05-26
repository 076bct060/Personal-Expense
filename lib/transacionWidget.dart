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
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Text("NRP \n${transaction.amount}",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0))),
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 216, 236, 0)),
                  color: Colors.blue)),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  transaction.name.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(transaction.date.toString(),
                    style: TextStyle(color: Colors.grey)),
              ]),
        ],
      ),
    );
  }
}
