import 'package:flutter/material.dart';

void main() => runApp(UnoriginalApp());

class UnoriginalApp extends StatelessWidget {
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
        body: Column(children: []),
      ),
    );
  }
}
