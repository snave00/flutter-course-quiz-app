import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(const MyApp());
// }

// Shorter way
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // Sets connection between this MyApp Class to _MyAppState Class
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionTextKey': 'What\'s your favorite color?',
      'answersKey': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionTextKey': 'What\'s your favorite animal?',
      'answersKey': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ]
    },
    {
      'questionTextKey': 'What\'s your favorite anime?',
      'answersKey': [
        {'text': 'One Piece', 'score': 1},
        {'text': 'Naruto', 'score': 1},
        {'text': 'One Punch Man', 'score': 1},
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    // Calls the build method again to update widgets.
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
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
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(
                resultScore: _totalScore,
                onResetButtonPressed: _resetQuiz,
              ),
      ),
    );
  }
}
