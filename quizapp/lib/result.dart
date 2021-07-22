import 'package:flutter/material.dart';

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
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        // FlatButton(onPressqed: onPressed, child: child)

        ElevatedButton(
            child: Text('Restart the Quiz', style: TextStyle(fontSize: 22)),
            onPressed: resetQuize)
      ],
    ));
  }
}
