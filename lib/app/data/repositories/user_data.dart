import '../providers/network/user_data.dart';

class UserDataRepository {
  final UserDataApi api;

  UserDataRepository(this.api);

  getAll() {
    return api.getAll();
  }

  // changePassword(String email) {
  //   return api.changePassword(email);
  // }
}
