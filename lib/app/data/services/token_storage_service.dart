import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TokenStorageService extends GetxService {
  static TokenStorageService get to => Get.find();
  late final Box box;
  Future<TokenStorageService> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox(BoxNames.login.name);
    return this;
  }

  Future<String?> getRefresh() async =>
      await box.get(BoxKeys.refreshToken.name);

  Future<int> setRefreshToken(String token) async {
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
