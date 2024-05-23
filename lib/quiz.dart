import 'package:flutter/material.dart';
import 'package:quizly_hallows/gradient_background.dart';
import 'package:quizly_hallows/start_quiz.dart';
import 'package:quizly_hallows/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartQuiz(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientBackground(const [
          Color.fromARGB(255, 166, 151, 249),
          Color.fromARGB(255, 236, 161, 154)
        ], child: activeScreen),
      ),
    );
  }
}
