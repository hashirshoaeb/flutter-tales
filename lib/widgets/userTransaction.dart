import 'package:first_app/models/transaction.dart';
import 'package:first_app/widgets/newTransaction.dart';
import 'package:first_app/widgets/transactionList.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 1, amount: 2000, title: 'SuperMarket', date: new DateTime.now()),
    Transaction(
        id: 1, amount: 2000, title: 'SuperMarket', date: new DateTime.now()),
    Transaction(
        id: 1, amount: 2000, title: 'SuperMarket', date: new DateTime.now()),
    Transaction(
        id: 1, amount: 2000, title: 'SuperMarket', date: new DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTransaction = new Transaction(
      id: 1,
      title: txTitle,
      amount: txAmount,
      date: new DateTime.now(),
    );
    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
