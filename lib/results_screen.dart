import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You answered X questions out of Y questions correctly',
              style: GoogleFonts.merriweather(),
            ),
            Text(
              '..show the right answers here...',
              style: GoogleFonts.merriweather(),
            ),
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
