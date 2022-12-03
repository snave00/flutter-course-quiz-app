// import 'package:flutter/src/widgets/container.dart'; -> Auto generate
// import 'package:flutter/src/widgets/framework.dart'; -> Auto generate
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({super.key, required this._questionText});

  // Question.test(this._questionText, {super.key}) {
  //   _questionText2 = _questionText;
  // }

  // String _questionText2 = "";
  const Question(this._questionText, {super.key});

  final String _questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          _questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
