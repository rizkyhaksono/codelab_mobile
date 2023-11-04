import 'package:get/get.dart';
import 'package:modul4/app/presentation/bindings/auth_binding.dart';
import 'package:modul4/app/presentation/bindings/login_binding.dart';
import 'package:modul4/app/presentation/pages/home_view.dart';
import 'package:modul4/app/presentation/pages/login_view.dart';
import 'package:modul4/app/presentation/pages/register_view.dart';

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
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterPage(),
      binding: AuthBinding(),
    ),
  ];
}
