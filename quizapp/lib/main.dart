import 'package:flutter/material.dart';
import 'result.dart';

import 'Quiz.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;
  int _questionIndex = 0;
  int _totalScore = 0;
  int num0 = 0, num1 = 0, num2 = 0, num3 = 0, num4 = 0;

  void _resetQuize() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
      num3 = 0;
      num4 = 0;
    });
  }

  void _answerQuetions(int score) {
    if (_questionIndex == 0)
      num0 = score;
    else if (_questionIndex == 1)
      num1 = score;
    else if (_questionIndex == 2)
      num2 = score;
    else if (_questionIndex == 3)
      num3 = score;
    else if (_questionIndex == 4) num4 = score;
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print('index= $_questionIndex');
    print('num0= $num0');
    print('num1= $num1');
    print('num2= $num2');
    print('num3= $num3');
    print('num4= $num4');

    print('toalscor= $_totalScore');
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz App',
            style: TextStyle(color: w),
          ),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (val) {
                setState(() {
                  isSwitched = val;

                  if (isSwitched == true) {
                    b = Colors.white;
                    w = Colors.black;
                  } else {
                    b = Colors.black;
                    w = Colors.white;
                  }
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.yellow,
            )
          ],
        ),
        body: Container(
            color: w,
            child: _questionIndex < _questions.length
                ? Quiz(_questions, _questionIndex, _answerQuetions)
                : Result(_resetQuize, _totalScore)

            // Question()
            ),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.arrow_back,
              color: w,
              size: 40,
            ),
            onPressed: () {
              setState(() {
                if (_questionIndex == 1)
                  _totalScore -= num0;
                else if (_questionIndex == 2)
                  _totalScore -= num1;
                else if (_questionIndex == 3)
                  _totalScore -= num2;
                else if (_questionIndex == 4)
                  _totalScore -= num3;
                else if (_questionIndex == 5) _totalScore -= num4;

                if (_questionIndex > 0) _questionIndex--;
              });
              print('index= $_questionIndex');
              print('num0= $num0');
              print('num1= $num1');
              print('num2= $num2');
              print('num3= $num3');
              print('num4= $num4');

              print('toalscor= $_totalScore');
            }),
      ),
    );
  }
}
