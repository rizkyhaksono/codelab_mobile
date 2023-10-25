import 'dart:convert';

import 'package:get/get.dart';
import 'package:modul3/app/data/models/todo.dart';

import 'package:http/http.dart' as http;

class TodoController extends GetxController {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com/todos/5';

  RxBool isLoading = false.obs;

  @override
  void onInit() async {
    super.onInit();
    await fetchTodos();
  }

  Future<Todo> fetchTodos() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      return Todo.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
