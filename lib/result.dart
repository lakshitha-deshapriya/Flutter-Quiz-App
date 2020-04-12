import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;

  Result({this.totalScore, this.reset});

  String get resultText {
    var text = 'You did it!';
    if (totalScore <= 8) {
      text = 'Your result is good. Score : $totalScore';
    } else {
      text = 'Your result is bad. Score : $totalScore';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            child: Text('Restart Quiz'),
            textColor: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}
