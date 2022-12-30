

import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback ansHandler;
  final String answer;
  Answer(this.ansHandler,this.answer);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ansHandler,
      child: Text(answer),
    );
  }
}
