import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _advice = "";
  int _counter = 0;
  bool isLoading = false;

  setLoading(bool state) => setState(() => isLoading = state);

  _fetchPost() async {
    try {
      setLoading(true);
      await _fetchData();
    } finally {
      setLoading(false);
    }
  }

  _fetchData() async {
    final String url = "https://api.adviceslip.com/advice";
    final http.Response response = await http.get(url);
    final body = json.decode(response.body);
    if (response.statusCode == 200)
      setState(() {
        _advice = body['slip']['advice'];
        _counter += 1;
      });
    else
      print("Failed to get data");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            "$_advice",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            "$_counter",
            style: TextStyle(fontSize: 26),
          ),
          FloatingActionButton(
            child: Icon(Icons.stars),
            onPressed: isLoading ? null : _fetchPost,
          )
        ],
      ),
    );
  }
}
