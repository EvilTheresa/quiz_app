import 'package:flutter/material.dart';
import 'package:quiz_project/start_screen.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen>{
  @override
  Widget build(context) {
    return Text('Questions widget');
  }
}