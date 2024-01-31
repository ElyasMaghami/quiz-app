// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_flutter/data/question.dart';
import 'package:quiz_flutter/question_summary/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chooseAnswer,
    required this.onRestart,
  });
  final void Function() onRestart;
  final List<String> chooseAnswer;

  //List<Map<String, Object>> getSummaryData() { *** ba 3 setare baham hastand
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswer.length; i++) {
      //loop body
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chooseAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    //final summaryData = getSummaryData(); ***
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'your answered $numCorrectQuestions out of $numTotalQuestions questions correctly ',
            style: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.cyan[300],
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionSummary(summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            icon: const Icon(
              Icons.replay,
            ),
            style: TextButton.styleFrom(
                iconColor: Colors.redAccent,
                backgroundColor: const Color.fromARGB(255, 131, 128, 128)),
            onPressed: onRestart,
            label: const Text(
              'Replay Quiz',
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
        ]),
      ),
    );
  }
}
