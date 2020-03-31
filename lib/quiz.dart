import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './asserts/Q.dart';

class Quiz extends StatelessWidget {
  final List<Q> question;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({this.question, this.questionIndex, this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Question(
            questionType: this.question[this.questionIndex].questionText),
        ...(this.question[this.questionIndex].answers)
            .map((ans) => new Answer(
                  text: ans,
                  onpressed: () => answerQuestion(),
                ))
            .toList(),
      ],
    );
  }
}
