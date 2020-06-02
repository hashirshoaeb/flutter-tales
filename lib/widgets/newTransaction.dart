import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function _addNewTransaction;
  final BuildContext _context;
  NewTransaction(this._addNewTransaction, this._context);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

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
              widget._addNewTransaction(
                titleController.text,
                double.parse(amountController.text),
                widget._context,
              );
            },
            child: Text("Add Transaction"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
