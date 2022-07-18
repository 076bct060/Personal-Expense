// ignore_for_file: use_key_in_widget_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChartBar extends StatelessWidget {
  String weekDay;
  double spendingAmount;
  double percentageSpent;
  ChartBar(this.weekDay, this.spendingAmount, this.percentageSpent);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$spendingAmount"),
        Container(
          width: 20,
          height: 30,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange),
              ),
              FractionallySizedBox(
                heightFactor: percentageSpent,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          ),
        ),
        Text(weekDay)
      ],
    );
  }
}
