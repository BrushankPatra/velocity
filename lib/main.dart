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
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  static const _questions = [
    {
      "questionText": "Which car manufacturer do you like?",
      "answers": [
        {"text": "BMW", "score": 3},
        {"text": "Volvo", "score": 5},
        {"text": "Porsche", "score": 2},
        {"text": "Audi", "score": 1},
        {"text": "Jaguar", "score": 4},
      ]
    },
    {
      "questionText": "Which smartphone brand do you prefer?",
      "answers": [
        {"text": "Samsung", "score": 4},
        {"text": "Apple", "score": 5},
        {"text": "Google", "score": 3},
        {"text": "Sony", "score": 2},
        {"text": "OnePlus", "score": 1},
      ]
    },
    {
      "questionText": "Which brand do you like for its laptops?",
      "answers": [
        {"text": "Apple", "score": 5},
        {"text": "Samsung", "score": 3},
        {"text": "Acer", "score": 4},
        {"text": "Asus", "score": 1},
        {"text": "MSI", "score": 2},
      ]
    },
    {
      "questionText": "Which tech YouTube channel do you like the most?",
      "answers": [
        {"text": "MKBHD", "score": 5},
        {"text": "The Tech Chap", "score": 1},
        {"text": "MrMobile", "score": 4},
        {"text": "MrWhoseTheBoss", "score": 3},
        {"text": "Dave2D", "score": 2},
      ]
    },
    {
      "questionText":
          "For which of the following services do you pay a premium?",
      "answers": [
        {"text": "YouTube Premium", "score": 5},
        {"text": "Spotify", "score": 3},
        {"text": "Amazon Prime", "score": 4},
        {"text": "HealthifyMe", "score": 1},
        {"text": "Zomato", "score": 2},
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    // if (_questionIndex < _questions.length) {
    //   print("We have more questions!");
    // }
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
