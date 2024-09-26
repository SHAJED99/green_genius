import 'package:get/get.dart';
import 'package:green_genius/src/models/data_models/answer_model.dart';
import 'package:green_genius/src/models/data_models/quiz_model.dart';

class QuizScreenWrapperController extends GetxController {
  final QuizModel quiz;
  final RxInt questionIndex = (-1).obs;
  final RxList<AnswerModel> giveAnswers = RxList();

  QuizScreenWrapperController({required this.quiz}) {
    // shuffle in answer level
    for (var element in quiz.questions) {
      element.answers.shuffle();
    }
    // shuffle in answer level
    quiz.questions.shuffle();

    if (quiz.questions.isNotEmpty) {
      questionIndex.value = 0;
    }
  }

  AnswerModel? get selectedAnswer {
    if (questionIndex.value < 0 || questionIndex.value >= giveAnswers.length) return null;

    // devPrint("   -------   ${questionIndex.value}   ----    ${giveAnswers.elementAt(questionIndex.value).answer}");

    return giveAnswers.elementAt(questionIndex.value);
  }

  void checkAnswer(AnswerModel answer) {
    if (selectedAnswer == null) {
      giveAnswers.add(answer);
    } else {
      // giveAnswers[questionIndex.value] = answerIndex;
    }

    // devPrint("$answer   -------   ${questionIndex.value}   ----    $giveAnswers");
  }

  bool get showResult => questionIndex.value < 0 || questionIndex.value >= quiz.questions.length;

  void nextQuestion() {
    questionIndex.value = questionIndex.value + 1;
  }

  int get totalCorrectAnswer {
    int correct = 0;
    for (int i = 0; i < giveAnswers.length; i++) {
      if (giveAnswers.elementAt(i).isCorrect) correct = correct + 1;
    }

    return correct;
  }
}
