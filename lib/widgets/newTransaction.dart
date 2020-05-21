import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function _addNewTransaction;
  NewTransaction(this._addNewTransaction);
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
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
            controller: amountController,
            keyboardType: TextInputType.number,
          ),
          FlatButton(
            onPressed: () {
              print(titleController.text);
              print(amountController.text);
              _addNewTransaction(
                  titleController.text, double.parse(amountController.text));
            },
            child: Text("Add Transaction"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
