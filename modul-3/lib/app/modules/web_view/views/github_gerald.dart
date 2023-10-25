import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul3/app/modules/web_view/controllers/web_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GithubGerald extends GetView<WebController> {
  const GithubGerald({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text("Github Gerald"),
        centerTitle: true,
      ),
      body: WebViewWidget(
        controller: controller.githubGerald,
      ),
    );
  }
}