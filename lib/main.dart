// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'transaction.dart';
import 'inputWidget.dart';

import 'transacionWidget.dart';

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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Transaction> transactions = [
    Transaction(amount: 2000, id: "2", date: DateTime.now(), name: "Groceries")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Expense"),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return GestureDetector(
                        onTap: () {},
                        child: InputWidget(_add),
                        behavior: HitTestBehavior.opaque,
                      );
                    });
              },
              icon: Icon(Icons.add))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (_) {
                return GestureDetector(
                  onTap: () {},
                  child: InputWidget(_add),
                  behavior: HitTestBehavior.opaque,
                );
              });
        },
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    child: Card(
                      elevation: 50,
                      borderOnForeground: true,
                      color: Colors.blue,
                      child: Text(
                        "Chart holder",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.normal),
                      ),
                    )),
                Column(
                  children: [
                    Column(
                      children: transactions.map((tx) {
                        return TransactionWidget(tx);
                      }).toList(),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _add(String idArg, double amountArg) {
    Transaction transaction = Transaction(
        amount: amountArg, id: "1", date: DateTime.now(), name: idArg);
    setState(() {
      transactions.add(transaction);
    });
  }
}
