import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: summaryData.map((item) {
          return Row(
            children: [
              Text(
                ((item['question_index'] as int) + 1).toString(),
                style: GoogleFonts.merriweather(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      item['question'] as String,
                      style: GoogleFonts.merriweather(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Your answer: ${item['user_answer'] as String}',
                        style: GoogleFonts.merriweather(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Text('Correct answer: ${item['correct_answer'] as String}',
                        style: GoogleFonts.merriweather(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(
                height: 150,
              )
            ],
          );
        }).toList(),
      ),
    );
  }
}
