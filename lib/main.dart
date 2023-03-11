import "package:flutter/material.dart";

void main() => runApp(UnoriginalApp());

class UnoriginalApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex += 1;
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
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Option 1"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Option 2"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Option 3"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Option 4"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Option 5"),
            ),
          ],
        ),
      ),
    );
  }
}
