import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionType;
  Question(this.questionType);
  @override
  Widget build(BuildContext context) {
    return Text(questionType);
  }
}
