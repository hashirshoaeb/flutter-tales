import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionType;
  Question({this.questionType});
  @override
  Widget build(BuildContext context) {
    return Text(
      questionType,
      style: TextStyle(fontSize: 25),
    );
  }
}
