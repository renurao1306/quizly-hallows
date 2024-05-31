import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizSummary extends StatelessWidget {
  QuizSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  bool isCorrectAnswer = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: summaryData.map((item) {
          isCorrectAnswer = item['correct_answer'] == item['user_answer'];
          
          return Row(
            children: [
              Container(
                width: 40,
                decoration: BoxDecoration(
                    color: isCorrectAnswer ? const Color.fromARGB(255, 144, 238, 144) :  const Color.fromARGB(255, 255, 182, 193),
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: Colors.black)),
                child: Text(
                  ((item['question_index'] as int) + 1).toString(),
                  style: GoogleFonts.merriweather(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 20,
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
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Your answer: ${item['user_answer'] as String}',
                        style: GoogleFonts.merriweather(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text('Correct answer: ${item['correct_answer'] as String}',
                          style: GoogleFonts.merriweather(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    )
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
