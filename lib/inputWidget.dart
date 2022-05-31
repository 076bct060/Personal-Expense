// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return inputField();
  }
}

Widget inputField() {
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
              decoration: InputDecoration(
            labelText: "Transaction",
          )),
          TextField(
            decoration: InputDecoration(labelText: "Amount"),
          ),
          TextButton(
            child: Text("Add"),
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}
