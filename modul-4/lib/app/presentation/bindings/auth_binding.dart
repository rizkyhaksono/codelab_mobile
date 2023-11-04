import 'package:get/get.dart';
import 'package:modul4/app/presentation/controllers/auth_controller.dart';
import 'package:modul4/app/presentation/controllers/home_controller.dart';
import 'package:modul4/app/presentation/controllers/form_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut(() => FormController());
    Get.lazyPut(() => HomeController());
  }
}
