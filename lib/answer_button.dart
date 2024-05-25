import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onClick, {super.key});

  final String answerText;
  final void Function(String ans) onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
            onPressed: (){onClick(answerText);},
            child: Text(
              answerText,
              style: GoogleFonts.merriweatherSans(color: Colors.black, fontSize: 16),
            )),
            const SizedBox(height: 10,)
      ],
    );
  }
}
