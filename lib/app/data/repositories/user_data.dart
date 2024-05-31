import 'package:hack_ujin/app/data/models/user_sign_dto/user_sign_dto.dart';

import '../providers/network/user_data.dart';

class UserDataRepository {
  final UserDataApi api;

  UserDataRepository(this.api);

  getAll() {
    return api.getAll();
  }

  loginUjin(UserSignDTO userSignDTO) async {
    return await api.loginUjin(userSignDTO);
  }
}
