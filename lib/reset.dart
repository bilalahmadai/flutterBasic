import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;
  Result(this.score, this.resetHandler);

  String get resultParse {
    String textResult;
    if (score == 30) {
      textResult = "Awesome Score";
    } else if (score >= 20) {
      textResult = "Better Score";
    } else if (score >= 10) {
      textResult = "Good Score";
    } else {
      textResult = "Bad Score";
    }

    return textResult;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultParse,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        Text(
          'total score : ${score}',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        OutlinedButton(onPressed: resetHandler, child: Text('reset Quiz'))
      ],
    );
  }
}
