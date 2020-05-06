import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Title',
            ),
            onChanged: (val) {
              // titleInput = val;
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
            onChanged: (val) {
              // amountInput = val;
            },
          ),
          FlatButton(
            onPressed: null,
            child: Text("Add Transaction"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
