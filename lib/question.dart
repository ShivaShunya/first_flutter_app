import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {    
    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        color: Colors.lightGreen,
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 28,
            color: Colors.brown,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}