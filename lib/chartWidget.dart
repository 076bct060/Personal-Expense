// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:personal_expense/chart_bar.dart';
import 'package:personal_expense/transaction.dart';

class ChartWidget extends StatelessWidget {
  List<Transaction> recentTransactions;
  ChartWidget(this.recentTransactions);
  List<Map<String, Object>> get weeklyTransaction {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double amount = 0;
      for (int i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].date?.day == weekDay.day &&
            recentTransactions[i].date?.month == weekDay.month &&
            recentTransactions[i].date?.year == weekDay.year) {
          amount += recentTransactions[i].amount as double;
        }
      }

      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': amount
      };
    });
  }

  double get totalAmount {
    return weeklyTransaction.fold(0.0, (previousValue, element) {
      return previousValue + double.parse(element['amount'].toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: Row(
        children: weeklyTransaction.map((e) {
          return ChartBar(
              e["day"].toString(),
              double.parse(e["amount"].toString()),
              double.parse(e["amount"].toString()) / totalAmount);
        }).toList(),
      ),
    );
  }
}
