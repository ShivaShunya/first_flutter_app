import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {
    final _questions = const [
      {
        'questionText': 'What color do you like ?',
        'options': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 7},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'Which animal do you prefer ?',
        'options': [
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Snake', 'score': 8},
          {'text': 'Elephant', 'score': 1},
          {'text': 'Lion', 'score': 10},
        ],
      },
      {
        'questionText': 'What would you prefer for time pass !',
        'options': [
          {'text': 'Lord Of The Rings', 'score': 5},
          {'text': 'Inception', 'score': 7},
          {'text': 'Black Mirror', 'score': 10},
          {'text': 'Sunday Suspense', 'score': 1},
        ],
      },
    ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int answerScore) {
    print('Question answered...');
    _totalScore += answerScore;
    setState(() {
      _questionIndex++;
    });
  }

  void _repeatTest() {
    print('Test restarted...');
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Personality Test'),
          ), 
          backgroundColor: Colors.orange,
          ),
        body: _questionIndex < _questions.length 
        ? Quiz(
          questions: _questions,
          questionIndex: _questionIndex,
          answerQuestion: _answerQuestion,
        ) 
        : Result(
          totalScore: _totalScore,
          repeatTestHandler: _repeatTest,
        ),      
      ),
    );
  }
}