import 'package:flutter/material.dart';

import './question.dart';

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
  var _questionIndex = 0;

  void _onQuestionChanged() {
    print('Changed question !');
    setState(() {
      _questionIndex++;
      _questionIndex = _questionIndex % 2;      
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What color do you like ?',
      'Which animal do you prefer ?'
    ];
    var colorAndAnimalOptions = [
      ['Green', 'Red'],
      ['Snake', 'Bird'],      
    ];

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
            Question(
              questions[_questionIndex]
            ),
            RaisedButton(
              child: Text(colorAndAnimalOptions[_questionIndex][0]),
              onPressed: () => print('Answered: ' + colorAndAnimalOptions[_questionIndex][0]),
              color: Colors.grey,
            ),
            RaisedButton(
              child: Text(colorAndAnimalOptions[_questionIndex][1]),
              onPressed: () => print('Answered: ' + colorAndAnimalOptions[_questionIndex][1]),
              color: Colors.grey,
            ),
            RaisedButton(
              child: Text('Click to change this question buddy !'),
              onPressed: _onQuestionChanged,
              color: Colors.blue,
            ),
          ],
        ),      
      ),
    );
  }
}