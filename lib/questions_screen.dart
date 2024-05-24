import 'package:flutter/material.dart';
import 'package:quizly_hallows/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Question goes here...', style: TextStyle(fontSize: 22),),
        const SizedBox(height: 30,),
        AnswerButton('Answer 1', (){}),
        const SizedBox(height: 10,),
        AnswerButton('Answer 2', (){}),
        const SizedBox(height: 10,),
        AnswerButton('Answer 3', (){}),
        const SizedBox(height: 10,),
        AnswerButton('Answer 4', (){}),
      ],
    );
  }
}
