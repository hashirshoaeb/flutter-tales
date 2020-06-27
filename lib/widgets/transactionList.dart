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
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          color: Colors.grey[100],
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text(
                      _userTransactions[index].title,
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      DateFormat.yMMMd().format(_userTransactions[index].date),
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Text(
                  "\$${_userTransactions[index].amount}",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
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
