import 'package:get/get.dart';
import 'package:green_genius/questions.dart';
import 'package:green_genius/src/models/data_models/quiz_model.dart';

class HomeScreenController extends GetxController {
  late List<QuizModel> quiz;

  HomeScreenController() {
    quiz = quizList;
  }
}
