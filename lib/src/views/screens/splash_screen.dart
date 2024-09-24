import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_genius/components.dart';
import 'package:green_genius/src/controllers/screen_controllers/splash_screen_controller.dart';
import 'package:green_genius/src/controllers/services/dev_functions/dev_scaffold.dart';
import 'package:green_genius/src/views/widgets/app_logo.dart';
import 'package:green_genius/src/views/widgets/company_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    super.dispose();
    Get.delete<SplashScreenController>();
  }

  @override
  void initState() {
    super.initState();
    Get.put(SplashScreenController());
  }

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const _AppLogo(),
              Positioned(
                left: 0,
                right: 0,
                bottom: defaultPadding,
                child: _AppInformation(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _AppLogo extends StatelessWidget {
  const _AppLogo();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(defaultPadding),
        padding: EdgeInsets.all(defaultPadding),
        constraints: BoxConstraints(maxHeight: defaultBoxHeight * 5),
        child: const FittedBox(
          fit: BoxFit.scaleDown,
          child: AppLogo(),
        ),
      ),
    );
  }
}

class _AppInformation extends StatelessWidget {
  _AppInformation();
  final SplashScreenController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _CompanyLogo(),
        SizedBox(height: defaultPadding / 4),
        const _Text(baseCompanyName),
        SizedBox(height: defaultPadding / 4),
        Obx(() => _Text(_controller.version)),
      ],
    );
  }
}

class _CompanyLogo extends StatelessWidget {
  const _CompanyLogo();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: defaultPadding,
      width: defaultPadding,
      child: const CompanyLogo(),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onSurface));
  }
}
