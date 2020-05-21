import 'package:first_app/widgets/userTransaction.dart';
import 'package:flutter/material.dart';

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
  // String titleInput;
  // String amountInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.blue,
                child: Text("Static data"),
                elevation: 5,
              ),
              UserTransactions(),
            ],
          ),
        ),
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
