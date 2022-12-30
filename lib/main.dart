import 'dart:ffi';

import 'package:app/answer.dart';
import 'package:app/quiz.dart';
import 'package:app/reset.dart';
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questionstxt = const [
    {
      "level": 1,
      "qtxt": "what is your name",
      "ans": [
        {"txt": "bilal", "score": 10},
        {"txt": "ahmad", "score": 0},
        {"txt": "ansar", "score": 0},
      ],
    },
    {
      "level": 2,
      "qtxt": "what is your Father name",
      "ans": [
        {"txt": "bilal", "score": 0},
        {"txt": "ahmad", "score": 0},
        {"txt": "ansar", "score": 10},
      ]
    },
    {
      "level": 3,
      "qtxt": "what is your age",
      "ans": [
        {"txt": "21", "score": 10},
        {"txt": "25", "score": 0},
        {"txt": "18", "score": 0},
      ]
    },
  ];

  var _qindex = 0;
  var _totalScore = 0;
  void _ansQuestion(int score) {
    setState(() {
      _qindex += 1;
    });
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _qindex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: _qindex < _questionstxt.length
              ? Text(
                  "${_questionstxt[_qindex]["level"]} / ${_questionstxt.length}")
              : Text("Score"),
        ),
        body: _qindex < _questionstxt.length
            ? Quiz(
                qindex: _qindex,
                ansHandler: _ansQuestion,
                questions: _questionstxt,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}


// "ans": ["bilal", "bilal", "bilal"],
// ...(_questionstxt[_qindex]['ans'] as List<String>).map((answer) {
//               return Answer(_ansQuestion, answer);
//             }).toList()
