import 'package:green_genius/src/models/data_models/answer_model.dart';
import 'package:green_genius/src/models/data_models/question_model.dart';
import 'package:green_genius/src/models/data_models/quiz_model.dart';

List<QuizModel> quizList = [
  // ----------------------------------------------------------------------------------------------- GLOBAL WARMING
  QuizModel(
    quizName: "GLOBAL WARMING",
    imageUrl: "lib/assets/image/global_warming.jpeg",
    questions: [
      // 1
      QuestionModel(
        question: "What is the drawback of global warming?",
        correctAnswer: 2,
        answers: [
          AnswerModel(answer: "Political Reasons", note: "C IS CORRECT BECAUSE IT JUST AND THERE IS OTHER LOGICAL REASONS TO PROVE IT AS WELL."),
          AnswerModel(answer: "Non-Political Reasons", note: "C IS CORRECT BECAUSE IT JUST AND THERE IS OTHER LOGICAL REASONS TO PROVE IT AS WELL."),
          AnswerModel(answer: "Important Reasons", note: "C IS CORRECT BECAUSE IT JUST AND THERE IS OTHER LOGICAL REASONS TO PROVE IT AS WELL."),
          AnswerModel(answer: "Other Issues", note: "C IS CORRECT BECAUSE IT JUST AND THERE IS OTHER LOGICAL REASONS TO PROVE IT AS WELL."),
        ],
      ),
      // 2
      QuestionModel(
        question: "What is the drawback of global warming?",
        correctAnswer: 2,
        answers: [
          AnswerModel(answer: "Political Reasons", note: "C IS CORRECT BECAUSE IT JUST AND THERE IS OTHER LOGICAL REASONS TO PROVE IT AS WELL."),
          AnswerModel(answer: "Non-Political Reasons", note: "C IS CORRECT BECAUSE IT JUST AND THERE IS OTHER LOGICAL REASONS TO PROVE IT AS WELL."),
          AnswerModel(answer: "Important Reasons", note: "C IS CORRECT BECAUSE IT JUST AND THERE IS OTHER LOGICAL REASONS TO PROVE IT AS WELL."),
          AnswerModel(answer: "Other Issues", note: "C IS CORRECT BECAUSE IT JUST AND THERE IS OTHER LOGICAL REASONS TO PROVE IT AS WELL."),
        ],
      ),
    ],
  ),

  // ----------------------------------------------------------------------------------------------- PLASTIC POLLUTION
  QuizModel(
    quizName: "PLASTIC POLLUTION",
    imageUrl: "lib/assets/image/plastic_pollution.jpeg",
    questions: [],
  ),

  // ----------------------------------------------------------------------------------------------- AIR POLLUTION
  QuizModel(
    quizName: "AIR POLLUTION",
    imageUrl: "lib/assets/image/air_pollution.jpeg",
    questions: [],
  ),
  
  // ----------------------------------------------------------------------------------------------- DEFORESTATION
  QuizModel(
    quizName: "DEFORESTATION",
    imageUrl: "lib/assets/image/deforestation.jpeg",
    questions: [],
  ),

  // ----------------------------------------------------------------------------------------------- FAST FASHION
  QuizModel(
    quizName: "FAST FASHION",
    imageUrl: "lib/assets/image/first_fashion.jpeg",
    questions: [],
  ),

  // ----------------------------------------------------------------------------------------------- RECYCLING
  QuizModel(
    quizName: "RECYCLING",
    imageUrl: "lib/assets/image/recycling.jpeg",
    questions: [],
  ),
];
