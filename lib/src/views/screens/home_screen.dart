import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_genius/components.dart';
import 'package:green_genius/src/controllers/screen_controllers/home_screen_controller.dart';
import 'package:green_genius/src/controllers/services/dev_functions/dev_scaffold.dart';
import 'package:green_genius/src/models/data_models/quiz_model.dart';
import 'package:green_genius/src/views/screens/quiz_screens/quiz_screen_wrapper.dart';
import 'package:green_genius/src/views/widgets/app_logo.dart';
import 'package:green_genius/src/views/widgets/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenController _controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2, vertical: defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AppLogo(),
                    SizedBox(height: defaultPadding),
                    CustomTextBody(text: "PICK A QUIZ!", color: Theme.of(context).colorScheme.primary),
                    SizedBox(height: defaultPadding),
                    _QuizMenu(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _QuizMenu extends StatelessWidget {
  _QuizMenu();
  final HomeScreenController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (int i = 0; i < _controller.quiz.length; i++) _QuizCard(_controller.quiz.elementAt(i))
      ],
    );
  }
}

class _QuizCard extends StatelessWidget {
  const _QuizCard(this.quiz);
  final QuizModel quiz;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding / 8),
      child: Material(
        borderRadius: BorderRadius.circular(defaultPadding / 4),
        clipBehavior: Clip.antiAlias,
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Get.to(() => QuizScreenWrapper(quiz: quiz)),
          child: Container(
            constraints: BoxConstraints(maxWidth: defaultCardHeight),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2, vertical: defaultPadding / 4),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultPadding / 2),
                    image: DecorationImage(image: AssetImage(quiz.imageUrl), fit: BoxFit.cover),
                  ),
                  child: const AspectRatio(aspectRatio: 1),
                ),
                SizedBox(height: defaultPadding / 2),
                CustomTextBody.S(
                  text: quiz.quizName,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
