import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.onTop, required this.answerText, super.key});

  final String answerText;
  final void Function() onTop;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTop,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 239, 66, 66),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
