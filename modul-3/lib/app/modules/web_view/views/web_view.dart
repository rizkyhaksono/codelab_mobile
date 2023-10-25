import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul3/app/modules/web_view/controllers/web_controller.dart';

class WebView extends GetView<WebController> {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text("Github Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed('/github_rizky');
              },
              child: Text("Github Rizky"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/github_gerald');
              },
              child: Text("Github Gerald"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/github_rafli');
              },
              child: Text("Github Rafli"),
            )
          ],
        ),
      ),
    );
  }
}
