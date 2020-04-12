import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function selected;
  final index;

  Quiz(
      {@required this.selected,
      @required this.questions,
      @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['question']),
        ...(questions[index]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => selected(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
