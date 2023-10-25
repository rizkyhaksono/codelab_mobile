import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul3/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Codelab Modul 3"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed('/article');
              },
              child: const Text(
                "Article Page",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/todos');
              },
              child: const Text(
                "Todos Page",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/web_view');
              },
              child: const Text(
                "Web Page",
                style: TextStyle(fontSize: 20, color: Colors.redAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}
