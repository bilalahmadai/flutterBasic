import 'package:app/answer.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final int qindex;
  final Function ansHandler;
  final List<Map<String, Object>> questions;
  Quiz(
      {required this.qindex,
      required this.ansHandler,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(questions[qindex]['qtxt'] as String),
        ...(questions[qindex]['ans'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => ansHandler(answer['score'] as int),
              answer['txt'] as String);
        }).toList()
      ],
    );
  }
}
