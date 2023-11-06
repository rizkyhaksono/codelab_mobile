import 'package:get/get.dart';
import 'package:modul5/app/presentations/bindings/home_binding.dart';
import 'package:modul5/app/presentations/views/image_view.dart';
import 'package:modul5/app/presentations/views/realtime_view.dart';
import 'package:modul5/app/presentations/views/sign_up_view.dart';
import 'package:modul5/app/presentations/views/home_view.dart';
import 'package:modul5/app/presentations/views/users_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignUpView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USERS,
      page: () => UsersView(),
    ),
    GetPage(
      name: _Paths.REALTIME,
      page: () => RealtimeView(),
    ),
    GetPage(
      name: _Paths.STORAGE,
      page: () => ImageView(),
    ),
  ];
}
