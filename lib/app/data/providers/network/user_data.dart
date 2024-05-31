import 'package:get/get.dart';
import 'package:hack_ujin/app/data/models/user_sign_dto/user_sign_dto.dart';

import '../../../core/values/consts.dart';
import '../../../utils/widgets/app_dialog/app_dialog.dart';
import '../../models/account/account.dart';
import '../../services/api_service.dart';
import '../../services/auth_service.dart';
import 'api_endpoints.dart';

class UserDataApi {
  UserDataApi();

  final apiService = Get.find<ApiService>();
  final authService = Get.find<AuthService>();

  getAll() async {
    try {
      var response = await apiService.request(ApiEndpoints.account,
          method: HttpMethod.POST,
          headers: {HttpHeaders.accessToken: authService.accessToken});
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = response.data;
        return Account.fromJson(jsonResponse['user']);
      } else {
        authService.logout();
      }
    } catch (_, stack) {
      '$_ $stack'.printError();
    }
  }

  loginUjin(UserSignDTO userSignDTO) async {
    try {
      var response = await apiService.request(
        ApiEndpoints.ujinAuth,
        method: HttpMethod.POST,
        data: userSignDTO.toJson(),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = response.data;
        return Account.fromJson(jsonResponse);
      } else {
        Get.dialog(
          const AppDialog(
            title: 'Ошибка',
            middleText: 'Неизвестная ошибка, попробуйте еще раз.',
          ),
        );
      }
    } catch (_) {
      Get.dialog(
        const AppDialog(
          title: 'Ошибка',
          middleText: 'Неизвестная ошибка, попробуйте еще раз.',
        ),
      );
    }
  }
}
