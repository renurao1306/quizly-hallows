import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Quizzly Hallows', style: TextStyle(fontSize: 40)),
        const Text('Unleash Your Wizarding Knowledge!',
            style: TextStyle(fontSize: 20)),
        const SizedBox(height: 30),
        Image.asset(
          'assets/images/quiz.png',
          width: 200,
        ),
        const SizedBox(height: 30),
        ElevatedButton.icon(
          onPressed: switchScreen,
          label: const Text(
            'Start Quiz',
            style: TextStyle(fontSize: 28, color: Colors.black),
          ),
          icon: const Icon(Icons.arrow_forward),
        )
      ],
    );
  }
}
