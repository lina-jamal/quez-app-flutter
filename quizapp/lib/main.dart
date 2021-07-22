import 'package:flutter/material.dart';
import 'result.dart';

import 'Quiz.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuize() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuetions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print('answer chosen ...!');
    print(_questionIndex);
    print('total if${_totalScore}');
  }

  final List<Map<String, Object>> _questions = [
    {
      'questionTest': 'What\'s your favorite color',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Red', 'score': 30},
        {'text': 'Blue', 'score': 40},
      ]
    },
    {
      'questionTest': 'What\'s your favorite animal',
      'answer': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 20},
        {'text': 'Lion', 'score': 30},
        {'text': 'Rabbit', 'score': 40},
      ]
    },
    {
      'questionTest': 'What\'s your favorite city',
      'answer': [
        {'text': 'Gaza', 'score': 10},
        {'text': 'Rafah', 'score': 20},
        {'text': 'Khanyounis', 'score': 30},
        {'text': 'DerElbalah', 'score': 40},
      ]
    },
    {
      'questionTest': 'What\'s your favorite frout',
      'answer': [
        {'text': 'Banana', 'score': 10},
        {'text': 'Apple', 'score': 20},
        {'text': 'Orange', 'score': 30},
        {'text': 'Strawberries', 'score': 40},
      ]
    },
    {
      'questionTest': 'What\'s your favorite vegetables',
      'answer': [
        {'text': 'Tomato', 'score': 10},
        {'text': 'Cucumber', 'score': 20},
        {'text': 'eُggplant', 'score': 30},
        {'text': 'Cabbage', 'score': 40},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Container(
            child: _questionIndex < _questions.length
                ? Quiz(_questions, _questionIndex, _answerQuetions)
                : Result(_resetQuize)

            // Question()
            ),
      ),
    );
  }
}
