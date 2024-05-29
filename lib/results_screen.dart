import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizly_hallows/data/questions.dart';
import 'package:quizly_hallows/quiz_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers, required this.restartQuizFunc});

  final List<String> selectedAnswers;
  final void Function() restartQuizFunc;

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
    final totalNoOfQuestions = questions.length;
    final summaryData = getSummary();
    final correctNoOfQuestions = summaryData.where((item) {
      return item['correct_answer'] == item['user_answer'];
    }).length;

    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 150),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You answered $correctNoOfQuestions questions out of $totalNoOfQuestions questions correctly',
              style: GoogleFonts.merriweather(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(child: QuizSummary(getSummary())),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: restartQuizFunc,
              label: Text(
                'Retake Quiz',
                style: GoogleFonts.merriweatherSans(
                    fontSize: 18, color: Colors.black),
              ),
              icon: const Icon(Icons.replay),
            )
          ],
        ),
      ),
    );
  }
}
