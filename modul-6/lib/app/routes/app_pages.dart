import 'package:get/get.dart';
import 'package:modul6/app/modules/bindings/home_binding.dart';
import 'package:modul6/app/modules/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
