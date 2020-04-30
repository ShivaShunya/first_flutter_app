import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function answerQuestionHandler;
  final String answerText;

  Answer(this.answerQuestionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              child: Text(answerText),
              onPressed: answerQuestionHandler,
              color: Colors.blue,
              textColor: Colors.white,
            ),
    );
  }
}