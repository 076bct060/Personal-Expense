// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final Function fpointer;

  InputWidget(this.fpointer);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return inputField();
  }

  Widget inputField() {
    // String transactionString = "";
    // String amountString = "";

    void getInput() {
      var amount = double.parse(amountController.text);
      var transaction = titleController.text;

      if (amount <= 0 || transaction == "") {
        return;
      }
      widget.fpointer(transaction, amount);
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
