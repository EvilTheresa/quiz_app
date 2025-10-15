import 'package:flutter/material.dart';
import 'package:quiz_project/answer_button.dart';
import 'package:quiz_project/start_screen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The question'),
          SizedBox(height: 30),
          AnswerButton(answerText: 'Answer text', onTap: () {}),
          AnswerButton(answerText: 'Answer text', onTap: () {}),
          AnswerButton(answerText: 'Answer text', onTap: () {}),
        ],
      ),
    );
  }
}
