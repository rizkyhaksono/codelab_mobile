import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul5/app/presentations/controllers/client_controller.dart';

class DatabaseController extends ClientController {
  Databases? databases;
  @override
  void onInit() {
    super.onInit();
    // appwrite
    databases = Databases(client);
  }

  Future storeUserName(Map map) async {
    try {
      final result = await databases!.createDocument(
        databaseId: "65490e078487bd975337",
        documentId: ID.unique(),
        collectionId: "65490e21dfdfe3c9c2c5",
        data: map,
        permissions: [
          // Permission.read(Role.user("65491167b032afdfc914")),
          // Permission.update(Role.user("65491167b032afdfc914")),
          // Permission.delete(Role.user("65491167b032afdfc914")),
          Permission.read(Role.any()), // Set read permission to "any"
          Permission.update(Role.any()), // Set update permission to "any"
          Permission.delete(Role.any()), // Set delete permission to "any"
        ],
      );
      print("DatabaseController:: storeUserName $result");
    } catch (error) {
      Get.defaultDialog(
        title: "Error Database",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "$error",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }
}
