import 'package:get/get.dart';
import 'package:modul4/app/presentation/controllers/form_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormController());
  }
}
