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

  static const questions = [
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
    if (_questionIndex < questions.length) {
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
        body: Column(
          children: [
            Question(
              questions[_questionIndex]["questionText"] as String,
            ),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
