import 'package:get/get.dart';
import 'package:green_genius/components.dart';
import 'package:green_genius/src/controllers/data_controllers/data_controller.dart';
import 'package:green_genius/src/views/screens/home_screen.dart';

class SplashScreenController extends GetxController {
  final DataController _controller = Get.find();
  final RxBool isSplashScreenDone = false.obs;
  final RxBool isInit = false.obs;
  String get version => _controller.packageInfo.value?.version ?? "";

  SplashScreenController() {
    initApp();
  }

  void initApp() {
    _controller.runApp().then((_) {
      isInit.value = true;
      gotoHome();
    });

    Future.delayed(defaultSplashScreenShow).then((_) {
      isSplashScreenDone.value = true;
      gotoHome();
    });
  }

  void gotoHome() {
    if (isSplashScreenDone.value && isInit.value) {
      Get.offAll(() => const HomeScreen());
    }
  }
}
