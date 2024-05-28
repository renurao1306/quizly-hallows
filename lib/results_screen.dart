import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizly_hallows/data/questions.dart';
import 'package:quizly_hallows/quiz_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers});

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question.substring(3),
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 150),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You answered X questions out of Y questions correctly',
              style: GoogleFonts.merriweather(),
            ),
            Expanded(child: QuizSummary(getSummary())),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                'Retake Quiz',
                style: TextStyle(color: Colors.black),
              ),
              icon: const Icon(Icons.replay),
            )
          ],
        ),
      ),
    );
  }
}
