import 'package:get/get.dart';

import '../models/account/account.dart';
import '../repositories/user_data.dart';
import 'auth_service.dart';

class UserService extends GetxService {
  final UserDataRepository repository;
  UserService(this.repository);

  final authService = Get.find<AuthService>();

  final Rx<Account?> user = Rx(null);

  Future<UserService> init() async {
    await getUserData();
    return this;
  }

  getUserData() async {
    if (authService.isLogged) {
      user.value = await repository.getAll();
    }
  }

  deleteUserData() {
    user.value = null;
  }
}
