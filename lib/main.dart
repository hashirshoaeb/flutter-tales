import 'package:first_app/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Transaction> transactions = [
      Transaction(
          id: 1, amount: 2000, title: 'SuperMarket', date: new DateTime.now()),
      Transaction(
          id: 1, amount: 2000, title: 'SuperMarket', date: new DateTime.now()),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
              elevation: 6,
              color: Colors.green,
              child: Container(
                width: double.infinity,
                child: Text(
                  "hello",
                ),
              )),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 3),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 31, horizontal: 10),
                      child: Text(
                        '\$${tx.amount.toString()}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter App',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var column = Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: <Widget>[
//         Card(
//           color: Colors.red,
//           elevation: 6, // for shadow
//           child: Container(
//             child: Text("Data"),
//             width: double.infinity,
//           ),
//         ),
//         Card(
//           color: Colors.blue,
//           elevation: 6,
//           child: Container(
//             child: Text("Transactional Data"),
//             width: double.infinity,
//           ),
//         ),
//       ],
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter App'),
//       ),
//       body: column,
//     );
//   }
// }
