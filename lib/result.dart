import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final finalScore;

  Result(this.finalScore);

  String get textPhrase {
    String resultText;
    if (finalScore >= 26) {
      resultText = "Your are awesome";
    } else if (finalScore >= 18) {
      resultText = "Your are good";
    } else if (finalScore >= 14) {
      resultText = "Your are OK";
    } else {
      resultText = "Your need help";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textPhrase,
        style: TextStyle(fontSize: 26),
      ),
    );
  }
}
