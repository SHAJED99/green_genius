import 'package:green_genius/src/models/data_models/answer_model.dart';

class QuestionModel {
  final String question;
  final List<AnswerModel> answers;
  final String explanation;

  QuestionModel({
    required this.question,
    required this.explanation,
    required this.answers,
  });
}
