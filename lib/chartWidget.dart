import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:personal_expense/transaction.dart';

class ChartWidget extends StatelessWidget {
  List<Transaction> recentTransactions;
  ChartWidget(this.recentTransactions);
  List<Map<String, Object>> get weeklyTransaction {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      var currentDay = DateFormat.E(weekDay);
      double amount = 0;
      for (int i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].date?.day == weekDay.day &&
            recentTransactions[i].date?.month == weekDay.month &&
            recentTransactions[i].date?.year == weekDay.year) {
          amount += recentTransactions[i].amount as double;
        }
      }

      return {'day': currentDay, 'amount': amount};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(5), elevation: 10, child: Text("Hellow"));
  }
}
