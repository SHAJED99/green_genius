import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:green_genius/src/controllers/services/dev_functions/dev_print.dart';
import 'package:green_genius/src/models/app_models/local_data_model.dart';

class LocalDataHandler extends GetxController {
  LocalDataModel localDataModel = LocalDataModel();
  late final GetStorage _box;
  final String _localDataString = "data";

  Future<void> initApp() async {
    await GetStorage.init();
    _box = GetStorage();
    var r = _box.read(_localDataString);
    try {
      if (r != null) localDataModel = LocalDataModel.fromJson(r);
    } catch (e) {
      await removeData();
      devPrint("error: $e");
    }

    _print(localDataModel.toString());

    localDataModel.appSetting.listen((_) {
      devPrint("AppSetting Data is Changed. Writing local data.");
      _print(localDataModel.appSetting.value.toString());
      _box.write(_localDataString, localDataModel.toJson());
    });
  }

  Future<bool> setData(String key, dynamic data) async {
    try {
      await _box.write(key, jsonEncode(data));
      return true;
    } catch (e) {
      devPrint("LocalDataHandler: Unable to write date for: $key --------- Error: $e");
      return false;
    }
  }

  T? readData<T>(String key) {
    try {
      return jsonDecode(_box.read<String>(key)!) as T;
    } catch (e) {
      removeData(key: key);
      devPrint("LocalDataHandler: Unable to write date for: $key --------- Error: $e");
      return null;
    }
  }

  Future<void> removeData({String key = ""}) async {
    if (key.isEmpty) {
      await _box.erase();
    } else {
      await _box.remove(key);
    }
    devPrint("LocalDataHandler: Data removed ${key.isEmpty ? "" : "for Key: $key"}");
  }
}

_print(String text) {
  devPrint("""
LocalDataHandler ------------------------------------------------------------
$text
----------------------------------------------------------------------------------------------------
""");
}
