import 'package:first_app/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/chartBar.dart';
import 'package:pie_chart/pie_chart.dart';

class Chart extends StatelessWidget {
  final List<Transaction> transactions;

  Chart(this.transactions);

  Map<String, double> get mappedChartValues {
    Map<String, double> dataMap = new Map<String, double>();
    groupedTransactionValue.forEach((element) {
      dataMap.putIfAbsent(element["day"], () => element["amount"]);
    });
    print(dataMap.toString());
    return dataMap;
  }

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
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Summary",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          color: Colors.grey[50],
          elevation: 0,
          child: PieChart(
            dataMap: mappedChartValues,
            showChartValuesInPercentage: false,
            chartValueBackgroundColor: Colors.grey[200],
            chartValueStyle: defaultChartValueStyle.copyWith(
                color: Colors.blueGrey[900],
                fontSize: 20,
                fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
