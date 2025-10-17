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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionIdentifier(
                  questionIndex: data['question_index'] as int,
                  isCorrect: isAnswerCorrect,
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                      Text(
                        data['user_answer'] as String,
                        style: TextStyle(color: const Color.fromARGB(251, 251, 105, 245)),),
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(color: const Color.fromARGB(255, 124, 189, 247)),
                  )],
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
