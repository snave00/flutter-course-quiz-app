import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.onButtonPressed, this.answerText, {super.key});

  // final VoidCallback onButtonPressed; // -> If does not return something.
  final Function()
      onButtonPressed; // -> If returns something. Example: onButtonPressed(passedInt: 1)
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: onButtonPressed,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
