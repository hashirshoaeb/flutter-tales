import 'package:first_app/widgets/chart.dart';
import 'package:first_app/widgets/newTransaction.dart';
import 'package:first_app/widgets/transactionList.dart';
import 'package:flutter/material.dart';
import 'models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transaction App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
    Transaction(id: 1, title: "nice", date: DateTime.now(), amount: 200),
    Transaction(
        id: 1,
        title: "nice",
        date: DateTime.now().add(Duration(days: 1)),
        amount: 200),
    Transaction(
        id: 1,
        title: "nice",
        date: DateTime.now().subtract(Duration(days: 1)),
        amount: 200),
    Transaction(
        id: 1,
        title: "nice",
        date: DateTime.now().add(Duration(days: 1)),
        amount: 200),
    Transaction(id: 1, title: "nice", date: DateTime.now(), amount: 200),
  ];

  void _addNewTransaction(
      String txTitle, double txAmount, BuildContext _context) {
    final newTransaction = new Transaction(
      id: 1,
      title: txTitle,
      amount: txAmount,
      date: new DateTime.now(),
    );
    setState(() {
      _userTransactions.add(newTransaction);
    });
    Navigator.pop(_context);
  }

  void _onAddPressed(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_context) {
        return NewTransaction(
          _addNewTransaction,
          _context,
        );
      },
    );
  }

  List<Transaction> get _recentTransactions {
    return _userTransactions.where((element) {
      return element.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _onAddPressed(context),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Chart(_recentTransactions),
              TransactionList(_userTransactions),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _onAddPressed(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
