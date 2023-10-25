import 'package:get/get.dart';
import 'package:modul3/app/modules/articles/views/article_views.dart';
import 'package:modul3/app/modules/home/bindings/home_binding.dart';
import 'package:modul3/app/modules/home/views/home_view.dart';
import 'package:modul3/app/modules/todos/bindings/todo_binding.dart';
import 'package:modul3/app/modules/todos/views/todo_view.dart';
import 'package:modul3/app/modules/web_view/bindings/web_binding.dart';
import 'package:modul3/app/modules/web_view/views/github_gerald.dart';
import 'package:modul3/app/modules/web_view/views/github_rafli.dart';
import 'package:modul3/app/modules/web_view/views/github_rizky.dart';
import 'package:modul3/app/modules/web_view/views/web_view.dart';

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
      page: () => const WebView(),
      binding: WebBinding(),
    ),
    GetPage(
      name: _Paths.TODOS,
      page: () => const TodoView(),
      binding: TodoBinding(),
    ),
    GetPage(
      name: _Paths.GITHUB_RIZKY,
      page: () => const GithubRizky(),
      binding: WebBinding(),
    ),
    GetPage(
      name: _Paths.GITHUB_GERARLD,
      page: () => const GithubGerald(),
      binding: WebBinding(),
    ),
    GetPage(
      name: _Paths.GITHUB_RAFLI,
      page: () => const GithubRafli(),
      binding: WebBinding(),
    ),
  ];
}
