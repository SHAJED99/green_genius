import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_genius/components.dart';
import 'package:green_genius/src/controllers/screen_controllers/quiz_screen_wrapper_controller.dart';
import 'package:green_genius/src/controllers/services/dev_functions/dev_scaffold.dart';
import 'package:green_genius/src/controllers/services/functions/int_conversion.dart';
import 'package:green_genius/src/models/data_models/answer_model.dart';
import 'package:green_genius/src/models/data_models/question_model.dart';
import 'package:green_genius/src/models/data_models/quiz_model.dart';
import 'package:green_genius/src/views/widgets/animated_size_widget.dart';
import 'package:green_genius/src/views/widgets/app_logo.dart';
import 'package:green_genius/src/views/widgets/floating_button.dart';
import 'package:green_genius/src/views/widgets/text.dart';
import 'package:on_popup_window_widget/on_popup_window_widget.dart';
import 'package:on_process_button_widget/on_process_button_widget.dart';

class QuizScreenWrapper extends StatefulWidget {
  const QuizScreenWrapper({super.key, required this.quiz});
  final QuizModel quiz;

  @override
  State<QuizScreenWrapper> createState() => _QuizScreenWrapperState();
}

class _QuizScreenWrapperState extends State<QuizScreenWrapper> {
  @override
  void initState() {
    super.initState();
    Get.put(QuizScreenWrapperController(quiz: widget.quiz));
  }

  @override
  void dispose() {
    super.dispose();
    Get.delete<QuizScreenWrapperController>();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        await _goBack(context);
      },
      child: DevScaffold(
        child: Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding),
                  child: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: SingleChildScrollView(
                            child: CustomAnimatedSize(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const AppLogo(),
                                  SizedBox(height: defaultPadding),
                                  _QuestionCard(),
                                  _Result(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      _NextButton(),
                    ],
                  ),
                ),
                const Positioned(child: _GoBack()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GoBack extends StatelessWidget {
  const _GoBack();

  @override
  Widget build(BuildContext context) {
    return CustomFloatingButton(
      onTap: () async {
        await _goBack(context);
        return;
      },
      child: const Icon(Icons.arrow_left_sharp),
    );
  }
}

Future<void> _goBack(BuildContext context) async {
  final QuizScreenWrapperController controller = Get.find();
  if (controller.showResult) {
    Get.until((route) => route.isFirst || route.settings.name == "/HomeScreen");
    return;
  }

  await showDialog(
    context: context,
    builder: (context) {
      return OnPopupWindowWidget(
        title: const Text("Do you want to quit?"),
        child: OnProcessButtonWidget(
          onDone: (_) => Get.until((route) => route.isFirst || route.settings.name == "/HomeScreen"),
          child: const Text("Quit"),
        ),
      );
    },
  );

  return;
}

class _HeadingText extends StatelessWidget {
  const _HeadingText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomTextHeading.S(
      text: text,
      color: Theme.of(context).colorScheme.onSurface,
      // isBold: false,
      textAlign: TextAlign.center,
    );
  }
}

class _QuestionCard extends StatelessWidget {
  _QuestionCard();
  final QuizScreenWrapperController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (_controller.showResult) return const SizedBox();
      final QuestionModel question = _controller.quiz.questions.elementAt(_controller.questionIndex.value);
      return Column(
        children: [
          // Question
          _HeadingText(question.question),

          SizedBox(height: defaultPadding / 2),

          // Question Index
          CustomTextLabel(
            text: "QUESTION: ${_controller.questionIndex.value + 1}/${_controller.quiz.questions.length}",
            isBold: true,
          ),
          SizedBox(height: defaultPadding),

          for (int i = 0; i < question.answers.length; i++) _MCQButton(i),

          _ShowNote(),
        ],
      );
    });
  }
}

class _MCQButton extends StatelessWidget {
  _MCQButton(this.index);
  final int index;

  final QuizScreenWrapperController _controller = Get.find();

  bool? get isClickedCorrect {
    AnswerModel? selectedAnswer = _controller.selectedAnswer;
    // Check if Answer for the question is selected
    if (selectedAnswer != null) {
      AnswerModel mcqAnswer = _controller.quiz.questions.elementAt(_controller.questionIndex.value).answers.elementAt(index);
      // Is correct
      if (mcqAnswer.isCorrect) return true;

      // Is selected and not correct
      if (selectedAnswer.answer == mcqAnswer.answer && !mcqAnswer.isCorrect) return false;
    }

    return null;
  }

  Color? getColor(BuildContext context) {
    return isClickedCorrect == null
        ? null
        : isClickedCorrect!
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.error;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final QuestionModel question = _controller.quiz.questions.elementAt(_controller.questionIndex.value);
        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: defaultMaxWidth),
          child: OnProcessButtonWidget(
            margin: EdgeInsets.symmetric(vertical: defaultPadding / 4),
            alignment: Alignment.centerLeft,
            textAlign: TextAlign.left,
            fontColor: getColor(context) != null ? null : Theme.of(context).colorScheme.onSecondaryContainer,
            backgroundColor: getColor(context) ?? Theme.of(context).colorScheme.primaryContainer,
            onDone: (_) => _controller.checkAnswer(question.answers.elementAt(index)),
            child: Text("${index.getAlphabetForIndex()}. ${question.answers.elementAt(index).answer}"),
          ),
        );
      },
    );
  }
}

class _ShowNote extends StatelessWidget {
  _ShowNote();
  final QuizScreenWrapperController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      QuestionModel question = _controller.quiz.questions.elementAt(_controller.questionIndex.value);
      return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: defaultMaxWidth),
        child: CustomAnimatedSize(
          alignment: Alignment.topCenter,
          widthFactor: 1,
          child: _controller.selectedAnswer == null
              ? null
              : Container(
                  margin: EdgeInsets.symmetric(vertical: defaultPadding),
                  padding: EdgeInsets.all(defaultPadding / 2),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(defaultPadding),
                  ),
                  child: Column(
                    children: [
                      const CustomTextBody(
                        text: "EXPLANATION",
                        isBold: true,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: defaultPadding / 2),
                      CustomTextBody(
                        textAlign: TextAlign.center,
                        text: question.explanation,
                      ),
                    ],
                  ),
                ),
        ),
      );
    });
  }
}

class _NextButton extends StatelessWidget {
  _NextButton();
  final QuizScreenWrapperController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ConstrainedBox(
        constraints: BoxConstraints(maxWidth: defaultMaxWidth / 2),
        child: CustomAnimatedSize(
          widthFactor: 1,
          alignment: Alignment.topCenter,
          child: _controller.selectedAnswer == null
              ? null
              : OnProcessButtonWidget(
                  backgroundColor: Colors.transparent,
                  fontColor: Theme.of(context).colorScheme.onSurface,
                  margin: EdgeInsets.only(top: defaultPadding / 2),
                  border: Border.all(
                    strokeAlign: BorderSide.strokeAlignOutside,
                    width: borderWidth1,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  onDone: (_) => _controller.nextQuestion(),
                  child: const Text("Next"),
                ),
        ),
      ),
    );
  }
}

class _Result extends StatelessWidget {
  _Result();
  final QuizScreenWrapperController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return CustomAnimatedSize(
          child: !_controller.showResult
              ? null
              : Column(
                  children: [
                    const _HeadingText("YOUR SCORE"),
                    Container(
                      margin: EdgeInsets.all(defaultPadding),
                      constraints: BoxConstraints(maxWidth: defaultCardHeight),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        shape: BoxShape.circle,
                      ),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: CustomTextDisplay.S(
                            text: "${_controller.totalCorrectAnswer}/${_controller.quiz.questions.length}",
                            color: Theme.of(context).colorScheme.onSecondaryContainer,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
