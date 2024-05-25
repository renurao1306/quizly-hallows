import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizly_hallows/answer_button.dart';
import 'package:quizly_hallows/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.chooseAnswerFunc});

  final void Function(String ans) chooseAnswerFunc;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionNo = 0;

  void changeQuestion(String ans) {
    widget.chooseAnswerFunc(ans);
    setState(() {
      if (currentQuestionNo != 9) {
        currentQuestionNo++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              questions[currentQuestionNo].question,
              style: GoogleFonts.merriweather(
                  fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ...questions[currentQuestionNo].shuffleAnswers().map((e) {
            return AnswerButton(e, changeQuestion);
          }),
        ],
      ),
    );
  }
}
