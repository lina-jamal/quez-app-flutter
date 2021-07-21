import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quetionText;

  const Question(this.quetionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        quetionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
