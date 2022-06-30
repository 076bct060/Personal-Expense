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
                )),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: "Amount"),
              keyboardType: TextInputType.number,
            ),
            TextButton(
              child: Text("Add"),
              onPressed: () {
                fpointer(
                    titleController.text, double.parse(amountController.text));
              },
            )
          ],
        ),
      ),
    );
  }
}
