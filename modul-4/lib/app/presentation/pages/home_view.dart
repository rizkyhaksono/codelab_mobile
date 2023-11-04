import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Get.toNamed('/login');
                },
                child: Text("Login Page"),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed('/register');
                },
                child: Text("Register Page"),
              )
            ],
          ),
        ));
  }
}
