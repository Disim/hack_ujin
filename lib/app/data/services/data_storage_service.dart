import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DataStorageService extends GetxService {
  static DataStorageService get to => Get.find();
  late final Box box;
  Future<DataStorageService> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox(BoxNames.login.name);
    return this;
  }

  Future<String?> getRefresh() async =>
      await box.get(BoxKeys.refreshToken.name);

  Future<int> setRefreshToken(String token, {String? accountId}) async {
    if (accountId != null) {
      await box.put(BoxKeys.accountId.name, accountId);
    }
    await box.put(BoxKeys.refreshToken.name, token);
    return 0;
  }

  Future<void> clearStorage() async => await box.clear();
}

enum BoxKeys {
  accountId,
  refreshToken,
}

enum BoxNames {
  login,
}
