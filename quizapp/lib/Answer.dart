import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String questionAnswers;
  final VoidCallback answer;

  Answer(this.questionAnswers, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: (Text(
          questionAnswers,
          style: TextStyle(fontSize: 25),
          // style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.08),
        )),
        onPressed: answer,
      ),
    );
  }
}
