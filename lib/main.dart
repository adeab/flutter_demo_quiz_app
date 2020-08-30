import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  static const question = [
    {
      'question': 'Question 1',
      'answer': [
        {'text': 'a11', 'score': 30},
        {'text': 'a12', 'score': 10},
        {'text': 'a13', 'score': 20}
      ]
    },
    {
      'question': 'Question 2',
      'answer': [
        {'text': 'a21', 'score': 30},
        {'text': 'a22', 'score': 10},
        {'text': 'a23', 'score': 20}
      ]
    },
    {
      'question': 'Question 3',
      'answer': [
        {'text': 'a31', 'score': 30},
        {'text': 'a32', 'score': 10},
        {'text': 'a33', 'score': 20},
        {'text': 'a34', 'score': 210}
      ]
    },
  ];
  void _indexUpdate(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.green[100],
          appBar: AppBar(
            title: Text('Demo Quiz App'),
          ),
          body: _questionIndex < question.length
              ? Quiz(
                  indexNumber: _questionIndex,
                  question: question,
                  updateQuestion: _indexUpdate,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
