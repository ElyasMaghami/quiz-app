import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Image.asset(
              'assets/img/kk.png',
              width: 220,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Flutter Quiz ",
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          const SizedBox(
            height: 35,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
            icon: const Icon(Icons.arrow_right_alt_rounded),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
