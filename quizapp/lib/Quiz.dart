import 'package:flutter/material.dart';

import 'Answer.dart';
import 'Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final answerQuetions;

  Quiz(this.questions, this.questionIndex, this.answerQuetions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ...(_questions.map((e)=>Question('${e['questionTest']}'))).toList()
        Question('${questions[questionIndex]['questionTest']}'),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                '${answer['text']}', () => answerQuetions(answer['score'])))
            .toList(),
      ],
    );
  }
}
