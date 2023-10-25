import 'package:get/get.dart';
import 'package:modul3/app/modules/articles/views/article_views.dart';
import 'package:modul3/app/modules/home/bindings/home_binding.dart';
import 'package:modul3/app/modules/home/views/home_view.dart';
import 'package:modul3/app/modules/todos/bindings/todo_binding.dart';
import 'package:modul3/app/modules/todos/views/todo_view.dart';
import 'package:modul3/app/modules/web_view/webview.dart';

import '../modules/articles/bindings/article_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ARTICLES,
      page: () => const ArticleView(),
      binding: ArticleBinding(),
    ),
    GetPage(
      name: _Paths.WEB_VIEW,
      page: () => const WebViewPage(),
    ),
    GetPage(
      name: _Paths.TODOS,
      page: () => const TodoView(),
      binding: TodoBinding(),
    )
  ];
}
