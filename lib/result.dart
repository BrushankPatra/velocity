import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore >= 20) {
      resultText = "You are AWESOME!";
    } else if (resultScore >= 15 && resultScore < 20) {
      resultText = "You are NICE!";
    } else if (resultScore >= 10 && resultScore < 15) {
      resultText = "You are ... good!";
    } else {
      resultText = "You are ... okay!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
