import 'package:green_genius/src/models/data_models/question_model.dart';

class QuizModel {
  final String quizName;
  final List<QuestionModel> questions;
  final String imageUrl;

  QuizModel({
    required this.quizName,
    required this.imageUrl,
    required this.questions,
  });
}
