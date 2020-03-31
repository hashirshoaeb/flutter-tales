import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int counter;
  final Function count;
  Quiz({this.question, this.counter, this.count});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Question(questionType: this.question[this.counter]["questionText"]),
        ...(this.question[this.counter]['answers'] as List<String>)
            .map((ans) => new Answer(
                  text: ans,
                  onpressed: () => count(0),
                ))
            .toList(),
      ],
    );
  }
}
