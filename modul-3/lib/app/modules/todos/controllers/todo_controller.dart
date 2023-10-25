// todo_controller.dart

import 'package:get/get.dart';
import 'package:modul3/app/data/models/todo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TodoController extends GetxController {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com/todos/5';

  var isLoading = false.obs;
  var hasError = false.obs;
  var errorMessage = ''.obs;
  var hasData = false.obs;
  var todo = Todo(userId: 0, id: 0, title: '', completed: false).obs;

  @override
  void onInit() {
    super.onInit();
    fetchTodos();
  }

  Future<void> fetchTodos() async {
    isLoading.value = true;
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        todo.value = Todo.fromJson(data);
        hasData.value = true;
      } else {
        hasError.value = true;
        errorMessage.value = 'Failed to load data';
      }
    } catch (error) {
      hasError.value = true;
      errorMessage.value = error.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
