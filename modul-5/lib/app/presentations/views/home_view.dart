import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul5/app/presentations/controllers/client_controller.dart';

class HomeView extends GetView<ClientController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildButton("Sign Up Page", '/signup'),
                  _buildButton("Users Page", '/users'),
                  _buildButton("Realtime Page", '/realtime'),
                  _buildButton("Image Page", '/storage'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(route);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
