import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function onpressed;
  Answer({this.text, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.teal[100],
        splashColor: Colors.teal,
        child: Text(this.text),
        onPressed: onpressed,
      ),
    );
  }
}
