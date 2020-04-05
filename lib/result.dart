import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final finalScore;
  String _resultText;

  Result(this.finalScore) {
    if (finalScore >= 26) {
      _resultText = "Your are awesome";
    } else if (finalScore >= 18) {
      _resultText = "Your are good";
    } else if (finalScore >= 14) {
      _resultText = "Your are OK";
    } else {
      _resultText = "Your need help";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _resultText,
        style: TextStyle(fontSize: 26),
      ),
    );
  }
}
