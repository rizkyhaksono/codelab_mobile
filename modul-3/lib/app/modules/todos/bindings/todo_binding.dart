import 'package:get/get.dart';
import 'package:modul3/app/modules/todos/controllers/todo_controller.dart';

class TodoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoController>(() => TodoController());
    Get.put(TodoController());
  }
}
