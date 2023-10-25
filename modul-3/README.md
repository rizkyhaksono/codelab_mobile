# Modul 3 Codelab

Ini adalah latihan kegiatan modul 3

## Laporan Praktikum Modul 3

1. Instalasi HTTP dan WebView
   <img src="https://github.com/rizkyhaksono/codelab_mobile/blob/main/modul-3/images/pubspec.png?raw=true"/>

2. Latihan HTTP

```
{
  "userId": 1,
  "id": 5,
  "title": "laboriosam mollitia et enim quasi adipisci quia provident illum",
  "completed": false
}
```

3. Implementasi Todo

<img src="https://github.com/rizkyhaksono/codelab_mobile/blob/main/modul-3/images/todo.png?raw=true"/>
<img src="https://github.com/rizkyhaksono/codelab_mobile/blob/main/modul-3/images/article1.png?raw=true"/>
<img src="https://github.com/rizkyhaksono/codelab_mobile/blob/main/modul-3/images/article2.png?raw=true"/>

4. Implementasi Todo

```
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul3/app/modules/todos/controllers/todo_controller.dart';

class TodoView extends GetView<TodoController> {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text('Fetch Data Todo'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () {
            if (controller.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            } else if (controller.hasError.value) {
              return Center(
                  child: Text("Error: ${controller.errorMessage.value}"));
            } else if (controller.hasData.value) {
              final todo = controller.todo.value;
              return Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        "User ID: ${todo.userId}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        "ID: ${todo.id}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        "Title: ${todo.title}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        "Completed: ${todo.completed}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Text('');
            }
          },
        ),
      ),
    );
  }
}
```

5. Implementasi Article

```
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul3/app/modules/articles/controllers/article_controller.dart';
import 'package:modul3/app/modules/articles/views/widgets/card_article.dart';

class ArticleView extends GetView<ArticleController> {
  const ArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text('Fetch Data Article'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(() {
            if (controller.isLoading.value) {
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.secondary),
                ),
              );
            } else {
              return Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.articles.length,
                  itemBuilder: (context, index) {
                    var article = controller.articles[index];
                    return CardArticle(article: article);
                  },
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}
```

6. Implementasi Web View

```
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
```

## Anggota Kelompok

| No  | Nama Lengkap                 | NIM             |
| --- | ---------------------------- | --------------- |
| 1   | Muhammad Rizky Haksono       | 202110370311325 |
| 2   | Geraldi Nathan Tommy Saputra | 202110370311351 |
| 3   | Rafli Kharisma Akbar         | 202110370311402 |

## Tampilan Akhir

| No  | Fitur         | Gambar                                                                                                          |
| --- | ------------- | --------------------------------------------------------------------------------------------------------------- |
| 1   | Todos Page    | <img src="https://github.com/rizkyhaksono/codelab_mobile/blob/main/modul-3/images/todos-page.png?raw=true"/>    |
| 2   | Article Page  | <img src="https://github.com/rizkyhaksono/codelab_mobile/blob/main/modul-3/images/article-page.png?raw=true"/>  |
| 3   | Github Page   | <img src="https://github.com/rizkyhaksono/codelab_mobile/blob/main/modul-3/images/github-page.png?raw=true"/>   |
| 4   | Github Rizky  | <img src="https://github.com/rizkyhaksono/codelab_mobile/blob/main/modul-3/images/github-rizky.png?raw=true"/>  |
| 5   | Github Rafli  | <img src="https://github.com/rizkyhaksono/codelab_mobile/blob/main/modul-3/images/github-rafli.png?raw=true"/>  |
| 6   | Github Gerald | <img src="https://github.com/rizkyhaksono/codelab_mobile/blob/main/modul-3/images/github-gerald.png?raw=true"/> |
