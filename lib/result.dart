import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Done with $totalScore',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Reset Quiz'),
            color: Colors.green,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
