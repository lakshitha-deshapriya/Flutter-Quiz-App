import 'package:flutter/material.dart';
import 'package:test_app/quiz.dart';
import 'package:test_app/result.dart';

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
      'question': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Lion', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favourite game?',
      'answers': [
        {'text': 'Football', 'score': 10},
        {'text': 'Cricket', 'score': 5},
        {'text': 'Athletic', 'score': 3},
        {'text': 'Basketball', 'score': 1}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
            child: AppBar(  
              centerTitle: true,
              title: Text(
                'Flutter App',
                textAlign: TextAlign.center,
              ),
            ),
            preferredSize: Size(double.infinity, 30)),
        body: _questionIndex < _questions.length
            ? Quiz(
                selected: _answerQuestion,
                questions: _questions,
                index: _questionIndex)
            : Result(
                totalScore: _totalScore,
                reset: _resetQuiz,
              ),
      ),
    );
  }
}
