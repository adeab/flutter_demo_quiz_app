import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int indexNumber;
  final Function updateQuestion;

  Quiz(
      {@required this.question,
      @required this.indexNumber,
      @required this.updateQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[indexNumber]['question']),
        ...(question[indexNumber]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => updateQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
