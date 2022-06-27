// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:personal_expense/user_transaction.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Expense"),
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
                userTransaction()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
