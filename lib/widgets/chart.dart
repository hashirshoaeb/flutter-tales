import 'package:first_app/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/chartBar.dart';

class Chart extends StatelessWidget {
  final List<Transaction> transactions;

  Chart(this.transactions);

  List<Map<String, Object>> get groupedTransactionValue {
    return List<Map<String, Object>>.generate(7, (index) {
      final weekday = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0.0;

      for (int i = 0; i < transactions.length; i++) {
        if (transactions[i].date.day == weekday.day &&
            transactions[i].date.month == weekday.month &&
            transactions[i].date.year == weekday.year) {
          totalSum += transactions[i].amount;
        }
      }
      return {
        "day": DateFormat.E().format(weekday).substring(0, 3),
        "amount": totalSum,
      };
    });
  }

  double get totalSpending {
    return groupedTransactionValue.fold(
        0.0, (previousValue, element) => previousValue + element["amount"]);
    // double spending = 0;
    // groupedTransactionValue.forEach((element) {
    //   spending += element["amount"];
    // });
    // return spending;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: groupedTransactionValue.map((value) {
        return Container(
          padding: EdgeInsets.all(5),
          child: ChartBar(
            value["day"],
            value["amount"],
            totalSpending == 0.0
                ? 0.0
                : (value["amount"] as double) / totalSpending,
          ),
        );
      }).toList(),
    );
  }
}
