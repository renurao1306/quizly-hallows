import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onClick, {super.key});

  final String answerText;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
            onPressed: onClick,
            child: Text(
              answerText,
              style: const TextStyle(color: Colors.black, fontSize: 16),
            )),
            const SizedBox(height: 10,)
      ],
    );
  }
}
