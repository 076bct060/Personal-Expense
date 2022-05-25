// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:personal_expense/transacionWidget.dart';
import 'package:personal_expense/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Transaction> transaction = [
    Transaction(amount: 1000, id: "1", date: DateTime.now(), name: "Lunch"),
    Transaction(amount: 2000, id: "2", date: DateTime.now(), name: "Groceries"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Personal Expense"),
        ),
        body: Column(
          children: [
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                child: Card(
                  elevation: 50,
                  borderOnForeground: true,
                  color: Colors.blue,
                  child: Text(
                    "First Item",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                  ),
                )),
            Column(
              children: transaction.map((tx) {
                return TransactionWidget(tx);
              }).toList(),
            )
          ],
        ));
  }
}
