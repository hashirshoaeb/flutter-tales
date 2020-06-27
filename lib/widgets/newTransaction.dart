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
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                style: TextStyle(fontSize: 22),
                controller: titleController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
                style: TextStyle(fontSize: 22),
                controller: amountController,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  padding: EdgeInsets.all(10),
                  color: Theme.of(context).primaryColor,
                  splashColor: Theme.of(context).primaryColorDark,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    print(titleController.text);
                    print(amountController.text);
                    widget._addNewTransaction(
                      titleController.text,
                      double.parse(amountController.text),
                      widget._context,
                    );
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(fontSize: 22),
                  ),
                  textColor: Colors.white70),
            )
          ],
        ),
      ),
    );
  }
}
