import 'package:green_genius/src/models/data_models/answer_model.dart';

class QuestionModel {
  final String question;
  final List<AnswerModel> answers;
  final int correctAnswer;

  QuestionModel({
    required this.question,
    required this.correctAnswer,
    required this.answers,
  });
}
