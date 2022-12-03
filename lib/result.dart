import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {required this.resultScore,
      required this.onResetButtonPressed,
      super.key});

  final int resultScore;
  final Function() onResetButtonPressed;

  String get resultPhrase {
    var resultText = '';

    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeab!e';
    } else if (resultScore <= 16) {
      resultText = 'Strange...';
    } else {
      resultText = 'You\'re so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: onResetButtonPressed,
              child: const Text('Reset Button'))
        ],
      ),
    );
  }
}
