import 'package:flutter/material.dart';
import 'package:quizapp/Answer.dart';
import 'package:quizapp/Question.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void answerQuetions() {
    setState(() {
      _questionIndex += 1;
    });
    print('answer chosen ...!');
    print(_questionIndex);
  }

  final List<Map<String, Object>> _questions = [
    {
      'questionTest': 'What\'s your favorite color',
      'answer': ['Black', 'Green', 'Red', 'Blue']
    },
    {
      'questionTest': 'What\'s your favorite animal',
      'answer': ['Cat', 'Dog', 'Lion', 'Rabbit']
    },
    {
      'questionTest': 'What\'s your favorite city',
      'answer': ['Gaza', 'Rafah', 'Khanyounis', 'DerElbalah']
    },
    {
      'questionTest': 'What\'s your favorite frout',
      'answer': ['Banana', 'Apple', 'Orange', 'Strawberries']
    },
    {
      'questionTest': 'What\'s your favorite vegetables',
      'answer': ['Tomato', 'Cucumber', 'eُggplant', 'Cabbage']
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
          child: (Column(
            children: [
              // ...(_questions.map((e)=>Question('${e['questionTest']}'))).toList()
              Question('${_questions[_questionIndex]['questionTest']}'),
              ...(_questions[_questionIndex]['answer'] as List<String>)
                  .map((answer) => Answer(answer, answerQuetions))
                  .toList(),
            ],
          )),

          // Question()
        ),
      ),
    );
  }
}
