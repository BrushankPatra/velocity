import "package:flutter/material.dart";

import "./quiz.dart";
import "./result.dart";

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

  static const _questions = [
    {
      "questionText": "Which car manufacturer do you like?",
      "answers": ["BMW", "Volvo", "Porsche", "Audi", "Jaguar"]
    },
    {
      "questionText": "Which smartphone brand do you prefer?",
      "answers": ["Samsung", "Apple", "Google", "Sony", "OnePlus"]
    },
    {
      "questionText": "Which brand do you like for its laptops?",
      "answers": ["Apple", "Samsung", "Acer", "Asus", "MSI"]
    },
    {
      "questionText": "Which tech YouTube channel do you like the most?",
      "answers": [
        "MKBHD",
        "The Tech Chap",
        "MrMobile",
        "MrWhoseTheBoss",
        "Dave2D"
      ]
    },
    {
      "questionText":
          "For which of the following services do you pay a premium?",
      "answers": ["YouTube", "Spotify", "Amazon Prime", "HealthifyMe", "Zomato"]
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print("answer chosen!");
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
