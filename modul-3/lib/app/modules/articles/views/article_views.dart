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
