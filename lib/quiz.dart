import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex,
      super.key});

  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionTextKey'] as String),
        ...(questions[questionIndex]['answersKey'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList(),
        // '...' means they take a list and they pull all the values in the list
        //out of it and spread it/add them to surrounding list
        //as individual values.
      ],
    );
  }
}
