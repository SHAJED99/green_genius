import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_genius/src/controllers/local_data_controllers/local_data_handler.dart';
import 'package:green_genius/src/controllers/services/dev_functions/dev_print.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DataController extends GetxController {
  bool _isInit = false;
  final Rx<PackageInfo?> packageInfo = Rxn();
  late final LocalDataHandler localData;

  Future<void> runApp() async {
    if (_isInit) return;
    await _initApp();
    await _startupTask();
    await _addingListeners();
    _isInit = true;
    devPrint("Data Controller has been initialized");
  }

  Future<void> _initApp() async {
    localData = Get.put(LocalDataHandler());
  }

  Future<void> _startupTask() async {
    packageInfo.value = await PackageInfo.fromPlatform();
    await localData.initApp();
    await _appSettingTask();
  }

  Future<void> _addingListeners() async {
    localData.localDataModel.appSetting.listen((_) async => await _appSettingTask());
  }

  // App Setting
  Future<void> _appSettingTask() async => _currentThere();

  void changeTheme({bool? isDarkMode}) => localData.localDataModel.appSetting.value = localData.localDataModel.appSetting.value.copyWith(isDarkMode: isDarkMode);

  void _currentThere() {
    if (localData.localDataModel.appSetting.value.isDarkMode == null) {
      Get.changeThemeMode(ThemeMode.system);
    } else {
      Get.changeThemeMode(localData.localDataModel.appSetting.value.isDarkMode! ? ThemeMode.dark : ThemeMode.light); // Theme change
    }
  }
}
