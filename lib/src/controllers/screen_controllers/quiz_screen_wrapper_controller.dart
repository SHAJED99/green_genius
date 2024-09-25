import 'package:get/get.dart';
import 'package:green_genius/src/models/data_models/quiz_model.dart';

class QuizScreenWrapperController extends GetxController {
  final QuizModel quiz;
  final RxInt questionIndex = (-1).obs;
  final RxList<int> giveAnswers = RxList();

  QuizScreenWrapperController({required this.quiz}) {
    if (quiz.questions.isNotEmpty) {
      questionIndex.value = 0;
    }
  }

  int? get selectedAnswer {
    if (questionIndex.value < 0 || questionIndex.value >= giveAnswers.length) return null;

    return giveAnswers.elementAt(questionIndex.value);
  }

  void checkAnswer(int answerIndex) {
    if (selectedAnswer == null) {
      giveAnswers.add(answerIndex);
    } else {
      // giveAnswers[questionIndex.value] = answerIndex;
    }

    // devPrint("$answerIndex   -------   ${questionIndex.value}   ----    $giveAnswers");
  }

  bool get showResult => questionIndex.value < 0 || questionIndex.value >= quiz.questions.length;

  void nextQuestion() {
    questionIndex.value = questionIndex.value + 1;
  }

  int get totalCorrectAnswer {
    int correct = 0;
    for (int i = 0; i < quiz.questions.length; i++) {
      if (quiz.questions.elementAt(i).correctAnswer == giveAnswers.elementAt(i)) correct = correct + 1;
    }

    return correct;
  }
}
