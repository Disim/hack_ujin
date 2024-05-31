import 'package:get/get.dart';
import 'package:hack_ujin/app/data/repositories/user_data.dart';

class HomeController extends GetxController {
  final UserDataRepository repository;
  HomeController(this.repository);

  void onTapped() {
    repository.getAll();
  }
}
