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
  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Card(
          color: Colors.red,
          elevation: 6, // for shadow
          child: Container(
            child: Text("Data"),
            width: double.infinity,
          ),
        ),
        Card(
          color: Colors.blue,
          elevation: 6,
          child: Container(
            child: Text("Transactional Data"),
            width: double.infinity,
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: column,
    );
  }
}
