import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:modul4/app/presentation/controllers/auth_controller.dart';
import 'package:modul4/app/presentation/controllers/notification_handler.dart';
import 'package:modul4/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Get.putAsync(() async => await SharedPreferences.getInstance());
  await FirebaseMessagingHandler().initPushNotification();
  await FirebaseMessagingHandler().initLocalNotification();

  final authController = Get.put(AuthController());

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      initialRoute: authController.isLoggedIn.value ? '/dashboard' : '/login',
      getPages: AppPages.routes,
      translationsKeys: const {
        'en_US': {
          'welcome': 'Welcome',
          'page_root': 'Root Page',
          'page_login': 'Login Page',
          'page_register': 'Register Page',
          'page_notfound': 'Noutfound Page',
        },
      },
      locale: const Locale('en', 'US'),
    ),
  );
}
