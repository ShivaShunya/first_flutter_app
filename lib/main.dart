import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // void onAnswerQuestion() {
  //   print('Answered !');
  // }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What color do you like ?',
    //   'What\'s your favourite animal ?'
    // ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('My First Flutter Application'),
          ), 
          backgroundColor: Colors.orange,
          ),
        body: Column(
          children: [
            Text('Question ?'),
            RaisedButton(child: Text('Answer 1'), onPressed: () => print('Answered 1'),),
            RaisedButton(child: Text('Answer 2'), onPressed: () => print('Answered 2'),),
            RaisedButton(child: Text('Answer 3'), onPressed: () => print('Answered 3'),),
          ],
        ),      
      ),
    );
  }
}