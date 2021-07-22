import 'package:flutter/material.dart';

import 'main.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuize;
  final resultScore;

  const Result(this.resetQuize, this.resultScore);
  String get resultPhrase {
    String resultText;
    if (resultScore >= 150) {
      resultText = 'Wow... You are very awesome';
    } else if (resultScore > 100) {
      resultText = 'Very Good ...!';
    } else if (resultScore > 50) {
      resultText = 'Pretty likable...!';
    } else {
      resultText = 'You are so bad...!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Your Score is $resultScore",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: b),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            resultPhrase,
            style:
                TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: b),
            textAlign: TextAlign.center,
          ),
        ),
        // FlatButton(onPressqed: onPressed, child: child)

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              child: Text('Restart the Quiz', style: TextStyle(fontSize: 22)),
              onPressed: resetQuize),
        )
      ],
    ));
  }
}
