import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hack_ujin/app/utils/backend_answers.dart';

import '../../core/values/consts.dart';
import '../../routes/app_pages.dart';
import '../../utils/widgets/app_dialog/app_dialog.dart';
import '../models/jwt_model/jwt_model.dart';
import '../models/user_sign_dto/user_sign_dto.dart';
import '../providers/network/api_endpoints.dart';
import 'token_storage_service.dart';
import 'user_service.dart';

class AuthService extends GetxService {
  static AuthService get instance => Get.find();
  var isLogged = false;
  JwtModel _tokens = JwtModel(refresh: '');
  TokenStorageService get _storage => Get.find<TokenStorageService>();
  var client = Dio(
    BaseOptions(
      baseUrl: Constants.BASE_URL,
      contentType: 'application/json; charset=UTF-8',
    ),
  );
  String? get accessToken => _tokens.access;
  Future<AuthService> init() async {
    HttpOverrides.global = MyHttpOverrides();
    isLogged = await refreshTokens();
    return this;
  }

  Future<void> updateTokens(JwtModel tokens, {String? accountId}) async {
    _tokens = tokens;
    await _storage.setRefreshToken(_tokens.refresh);
  }

  Future<void> clearTokens() async {
    printInfo(info: 'LOGOUT');
    isLogged = false;
    final userService = Get.find<UserService>();
    userService.deleteUserData();
    await _storage.clearStorage();
    Get.offAllNamed(Routes.LOGIN); // offAndToNamed('/login');
  }

  Future<bool> refreshTokens() async {
    try {
      Map<String, dynamic> map = {};
      var refreshToken = await _storage.getRefresh();
      if (refreshToken == null) throw 'No token.';
      map.addEntries([MapEntry(HttpHeaders.refreshToken, refreshToken)]);
      var result = await client.post(ApiEndpoints.refreshTokens, data: map);
      if (result.statusCode == 200) {
        var newTokens = JwtModel.fromJson(result.data);
        await updateTokens(newTokens);
        return true;
      }
      return false;
    } on DioException catch (e) {
      printError(info: 'Refresh tokens error!');
      printError(info: e.toString());
      return false;
    } catch (e) {
      printError(info: e.toString());
      return false;
    }
  }

  Future<int> sign(UserSignDTO userSignDTO, String type) async {
    try {
      final response = await client.post(type, data: userSignDTO.toJson());
      if (response.data.containsKey('message')) {
        final message = response.data['message'];
        if (message == 'Registration successful') {
          return 0;
        }
      }
      var tokens = JwtModel.fromJson(response.data);
      print(tokens);
      // global.accountId = response.data['accountId'];
      updateTokens(tokens);
      return 0;
    } on DioException catch (e) {
      if (e.response?.data.containsKey('error') ?? false) {
        final String error = e.response?.data['error'];
        Get.dialog(
          AppDialog(
            title: 'Ошибка',
            middleText: BEAnswers.answers[error] ??
                'Неизвестная ошибка, попробуйте еще раз.',
          ),
        );
      }

      return 1;
    } catch (e) {
      log('$e');
      Get.dialog(
        const AppDialog(title: 'Ошибка', middleText: 'Ошибка авторизации'),
      );
      return 1;
    }
  }

  Future<int> login(UserSignDTO userSignDTO) async {
    final result = await sign(userSignDTO, ApiEndpoints.signIn);
    if (result == 0) isLogged = true;
    return result;
  }

  Future<int> register(UserSignDTO userSignDTO) =>
      sign(userSignDTO, ApiEndpoints.signUp);

  Future<void> logout() async => await clearTokens();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    // <-- изменено здесь
    return super.createHttpClient(context) // используем context как nullable
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) {
        final isValidHost = [
          "89.23.115.103",
        ].contains(host); // <-- allow only hosts in array
        return isValidHost;
      });
  }
}
