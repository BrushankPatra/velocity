import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

void main() => runApp(UnoriginalApp());

class UnoriginalApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UnoriginalAppState();
  }
}

class _UnoriginalAppState extends State<UnoriginalApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print("answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      "Which car manufacturer do you like?",
      "Which smartphone brand do you prefer?",
      "Which brand do you like for its laptops?",
      "Which tech YouTube channel do you like the most?",
      "For which of the following services do you pay a premium?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
