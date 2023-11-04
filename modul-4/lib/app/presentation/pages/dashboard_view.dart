import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:modul4/app/presentation/controllers/auth_controller.dart';

class DashboardPage extends GetView {
  final _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text("Dashboard Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to Dashboard!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () {
                  _authController.logout();
                },
                child: Text("Log Out"))
          ],
        ),
      ),
    );
  }
}
