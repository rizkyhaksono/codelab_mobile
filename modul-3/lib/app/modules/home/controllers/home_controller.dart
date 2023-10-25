import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul3/app/modules/articles/views/article_views.dart';
import 'package:modul3/app/modules/todos/views/todo_view.dart';
import 'package:modul3/app/modules/web_view/views/web_view.dart';

class HomeController extends GetxController {
  var selectedTab = 0.obs;

  // List of page widgets
  final List<Widget> pages = [
    // Replace these with your actual page widgets.
    TodoView(),
    ArticleView(),
    WebView()
  ];

  // List of BottomNavigationBarItems
  final List<BottomNavigationBarItem> bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.list),
      label: "Todos",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.article),
      label: "Article",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.web),
      label: "Web",
    ),
  ];

  void changePage(int index) {
    selectedTab.value = index;
  }
}
