import 'package:quiz_flutter/data/question.dart';
import 'package:quiz_flutter/quiz_screen.dart';
import 'package:quiz_flutter/results_Screen.dart';
import 'package:quiz_flutter/screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> _selectedAnswer = [];

  var _actionScreen = 'Start-Screen';

  void switchScreen() {
    setState(() {
      _actionScreen = 'question-screen';
    });
  }

  void _chooseAnswer(String answer) {
    _selectedAnswer.add(answer);

    if (_selectedAnswer.length == questions.length) {
      setState(() {
        _actionScreen = 'result-Screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswer = [];
      _actionScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (_actionScreen == 'question-screen') {
      screenWidget = QuizScreen(
        onSelectAnswer: _chooseAnswer,
      );
    }

    if (_actionScreen == 'result-screen') {
      screenWidget =
          ResultsScreen(chooseAnswer: _selectedAnswer, onRestart: restartQuiz);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 50, 182, 30),
              Color.fromARGB(255, 212, 212, 212),
              Color.fromARGB(255, 251, 48, 48)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,

          // child: actionScreen=='Start-Screen'?StartScreen(switchScreen)
          // :const QuizScreen(),
        ),
      ),
    );
  }
}
