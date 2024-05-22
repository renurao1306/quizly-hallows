import 'package:flutter/material.dart';
import 'package:quizly_hallows/gradient_background.dart';
import 'package:quizly_hallows/start_quiz.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientBackground([
        Color.fromARGB(255, 166, 151, 249),
        Color.fromARGB(255, 236, 161, 154)
      ], child: StartQuiz()),
    ),
  ));
}
