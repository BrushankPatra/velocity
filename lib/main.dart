import 'package:flutter/material.dart';

void main() => runApp(UnoriginalApp());

class UnoriginalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Text("This is the default text!"),
      ),
    );
  }
}
