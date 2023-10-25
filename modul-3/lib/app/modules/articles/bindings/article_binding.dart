import 'package:get/get.dart';
import 'package:modul3/app/modules/articles/controllers/article_controller.dart';
import 'package:modul3/app/modules/todos/controllers/todo_controller.dart';

class ArticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArticleController>(() => ArticleController());
    Get.put(TodoController());
  }
}
