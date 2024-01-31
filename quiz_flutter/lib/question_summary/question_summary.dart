import 'package:flutter/material.dart';
import 'package:quiz_flutter/question_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return SummaryItem(data);
        }).toList()),
      ),
    );
  }
}


//SizedBox(
      // height: 300,
      // child: SingleChildScrollView(
      //   child: Column(
      //       children: summaryData.map((data) {
      //     return Row(
      //       children: [
      //         Text(((data['question_index'] as int) + 1).toString(),
      //             style: const TextStyle(fontSize: 16, color: Colors.black)),
      //         Expanded(
      //           child: Column(
      //             children: [
      //               Text((data['question'] as String),
      //                   style:
      //                       const TextStyle(fontSize: 16, color: Colors.black)),
      //               const SizedBox(
      //                 height: 5,
      //               ),
      //               Text(
      //                 ((data['correct_answer'] as String)),
      //                 style: const TextStyle(fontSize: 16, color: Colors.black),
      //               ),
      //               Text(
      //                 ((data['user_answer'] as String)),
      //                 style: const TextStyle(fontSize: 16, color: Colors.black),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     );
      //   }).toList()),
      // ),
    // );