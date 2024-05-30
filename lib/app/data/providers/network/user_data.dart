import 'dart:convert';

import 'package:get/get.dart';

import '../../../core/values/consts.dart';
import '../../../core/values/globals.dart' as global;
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
          method: HttpMethod.POST);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = response.data;
        return Account.fromJson(jsonResponse);
      } else {
        authService.logout();
      }
    } catch (_, stack) {
      '$_ $stack'.printError();
    }
  }

  // changePassword(String email) async {
  //   try {
  //     var response = await apiService.request(
  //       ApiEndpoints.resetPassword,
  //       data: jsonEncode({'email': email}),
  //       method: HttpMethod.POST,
  //     );
  //     if (response.statusCode == 204) {
  //       return response;
  //     } else {
  //       response.statusCode.printError();
  //     }
  //   } catch (_) {}
  // }
}
