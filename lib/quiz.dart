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
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-quiz';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String ans) {
    selectedAnswers.add(ans);
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartQuiz(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswerFunc: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: GradientBackground(const [
          Color.fromARGB(255, 166, 151, 249),
          Color.fromARGB(255, 236, 161, 154)
        ], child: screenWidget),
      ),
    );
  }
}
