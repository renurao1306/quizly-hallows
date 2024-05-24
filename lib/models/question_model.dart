class QuestionModel {
  const QuestionModel(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> shuffleAnswers(){
    final List<String> shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
