import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int totalScore;
  final Function repeatTestHandler;

  Result({this.totalScore, this.repeatTestHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Column(
                children: [
                  totalScore > 15 
                  ? Container(
                    child: Text('Scored $totalScore... You are intense !'),
                    margin: EdgeInsets.all(20),
                    color: Colors.purple,
                  )
                  : Container(
                    child: Text('Scored $totalScore... Peace out Broo...'),
                    margin: EdgeInsets.all(20),
                    color: Colors.lightGreen[200],
                  ),
                  RaisedButton(
                    child: Text('Click to repeat test'),
                    onPressed: repeatTestHandler,
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                  ),
                ],
              ),
            );
  }
}