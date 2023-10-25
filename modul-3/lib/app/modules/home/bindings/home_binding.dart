import 'package:get/get.dart';
import 'package:modul3/app/modules/articles/controllers/article_controller.dart';
import 'package:modul3/app/modules/home/controllers/home_controller.dart';
import 'package:modul3/app/modules/todos/controllers/todo_controller.dart';
import 'package:modul3/app/modules/web_view/controllers/web_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ArticleController>(() => ArticleController());
    Get.lazyPut<TodoController>(() => TodoController());
    Get.lazyPut<WebController>(() => WebController());
  }
}
