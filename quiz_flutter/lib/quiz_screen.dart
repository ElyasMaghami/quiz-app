import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_flutter/answer_button.dart';
import 'package:quiz_flutter/data/question.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      // currentQuestionState =currentQuestionState+1;
      // currentQuestionState +=1 ;
      currentQuestionIndex++; //increments the value by 1
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                fontSize: 24,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.shuffleAnswers.map((answer) {
              return Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 5),
                  child: AnswerButton(
                    answerText: answer,
                    onTop: () {
                      answerQuestion(answer);
                    },
                  ));
            }),
            // AnswerButton(onTop: () {}, answerText: currentQuestion.answer[0]),
            // AnswerButton(onTop: () {}, answerText: currentQuestion.answer[1]),
            // AnswerButton(onTop: () {}, answerText: currentQuestion.answer[2]),
            // AnswerButton(onTop: () {}, answerText: currentQuestion.answer[3]),
          ],
        ),
      ),
    );
  }
}
