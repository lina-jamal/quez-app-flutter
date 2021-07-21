import 'package:flutter/material.dart';
import 'package:quizapp/Question.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final _questions = [
    'What\'s your favorite color',
    'What\'s your favorite animal',
    'What\'s your favorite color',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Container(
          child: (Question(_questions[0])),

          // Question()
        ),
      ),
    );
  }
}
