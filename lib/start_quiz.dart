import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Quizzly Hallows', style: GoogleFonts.merriweather(fontSize: 40)),
        Text('Unleash Your Wizarding Knowledge!',
            style: GoogleFonts.merriweather(
                fontSize: 20, fontStyle: FontStyle.italic)),
        const SizedBox(height: 30),
        Image.asset(
          'assets/images/quiz.png',
          width: 200,
        ),
        const SizedBox(height: 30),
        ElevatedButton.icon(
          onPressed: switchScreen,
          label: Text(
            'Start Quiz',
            style:
                GoogleFonts.merriweatherSans(fontSize: 28, color: Colors.black),
          ),
          icon: const Icon(Icons.arrow_forward),
          iconAlignment: IconAlignment.end,
        )
      ],
    );
  }
}
