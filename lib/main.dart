import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _counter = [0, 0, 0, 0];

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
      ),
      body: Column(
        children: <Widget>[
          Text(this._counter[0].toString()),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: () => {
              setState(() => {_counter[0]++})
            },
          ),
          Text(this._counter[1].toString()),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => {
              setState(() => {_counter[1]++})
            },
          ),
          Text(this._counter[2].toString()),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () {
              setState(() => {_counter[2]++});
            },
          ),
          Text(this._counter[3].toString()),
          RaisedButton(
            child: Text('Answer 4'),
            onPressed: () => {
              setState(() => {_counter[3]++})
            },
          ),
        ],
      ),
    ));
  }
}
