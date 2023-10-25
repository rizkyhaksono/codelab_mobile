import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:modul3/app/data/models/article.dart';

class ArticleController extends GetxController {
  static const String _baseUrl = 'https://newsapi.org/v2/';
  static const String _apiKey = '8a9659ec17e64cef9b0a31dd2123885e';
  static const String _category = 'business';
  static const String _country = 'us';

  RxList<Article> articles = RxList<Article>([]);
  RxBool isLoading = false.obs;

  @override
  onInit() async {
    super.onInit();
    await fetchArticles();
  }

  Future<void> fetchArticles() async {
    try {
      isLoading.value = true;
      final response = await http.get(Uri.parse(
          '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey'));
      if (response.statusCode == 200) {
        final jsonData = response.body;
        final articlesResult = ArticlesResult.fromJson(json.decode(jsonData));
        articles.value = articlesResult.articles;
      } else {
        if (kDebugMode) {
          print('Request failed with status: ${response.statusCode}');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('An error occurred: $e');
      }
    } finally {
      isLoading.value = false;
    }
  }
}
