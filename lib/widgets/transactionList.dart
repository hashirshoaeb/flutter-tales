import 'package:first_app/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactions;
  TransactionList(this._userTransactions);

  Widget _listPlaceholder(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Spend some money please",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        Image(image: AssetImage("assets/images/unnamed.jpg")),
      ],
    );
  }

  Widget _listView(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 10,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).buttonColor),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Text(
                  "\$${_userTransactions[index].amount}",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      _userTransactions[index].title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(_userTransactions[index].date),
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              )
            ],
          ),
        );
      },
      itemCount: _userTransactions.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      child: _userTransactions.isEmpty
          ? _listPlaceholder(context)
          : _listView(context),
    );
  }
}
