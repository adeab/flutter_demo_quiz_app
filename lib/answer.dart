import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function pointer;
  final String answer;
  Answer(this.pointer, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: pointer,
        child: Text(
          answer,
          style: TextStyle(fontSize: 19),
        ),
      ),
    );
  }
}
