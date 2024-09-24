import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_genius/src/controllers/screen_controllers/quiz_screen_wrapper_controller.dart';
import 'package:green_genius/src/models/data_models/quiz_model.dart';

class QuizScreenWrapper extends StatefulWidget {
  const QuizScreenWrapper({super.key, required this.quiz});
  final QuizModel quiz;

  @override
  State<QuizScreenWrapper> createState() => _QuizScreenWrapperState();
}

class _QuizScreenWrapperState extends State<QuizScreenWrapper> {
  late final QuizScreenWrapperController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Get.put(QuizScreenWrapperController(quiz: widget.quiz));
  }

    @override
  void dispose() {
    super.dispose();
    Get.delete<QuizScreenWrapperController>();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
