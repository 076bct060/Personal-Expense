// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final Function fpointer;

  InputWidget(this.fpointer);
  Widget build(BuildContext context) {
    return inputField();
  }

  Widget inputField() {
    // String transactionString = "";
    // String amountString = "";

    final titleController = TextEditingController();
    final amountController = TextEditingController();
    void getInput() {
      var amount = double.parse(amountController.text);
      var transaction = titleController.text;

      if (amount <= 0 || transaction == "") {
        return;
      }
      fpointer(transaction, amount);
    }

    return Card(
      elevation: 10,
      borderOnForeground: true,
      shadowColor: Colors.blueAccent,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Transaction",
              ),
              onSubmitted: (_) => getInput(),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: "Amount"),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => getInput(),
            ),
            TextButton(
              child: Text("Add"),
              onPressed: getInput,
            )
          ],
        ),
      ),
    );
  }
}
