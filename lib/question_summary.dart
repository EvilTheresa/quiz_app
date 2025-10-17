import 'package:flutter/material.dart';
import 'package:quiz_project/question_identifier.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final bool isAnswerCorrect = data['user_answer'] == data['correct_answer'];

            return Row(
              children: [
                QuestionIdentifier(
                  questionIndex: data['question_index'] as int,
                  isCorrect: isAnswerCorrect,
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String, style: TextStyle(color: Colors.white),),
                      SizedBox(height: 5),
                      Text(data['user_answer'] as String),
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
