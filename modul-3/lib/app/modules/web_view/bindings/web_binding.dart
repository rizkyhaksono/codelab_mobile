import 'package:get/get.dart';
import 'package:modul3/app/modules/todos/controllers/todo_controller.dart';
import 'package:modul3/app/modules/web_view/controllers/web_controller.dart';

class WebBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebController>(() => WebController());
    Get.put(TodoController());
  }
}
