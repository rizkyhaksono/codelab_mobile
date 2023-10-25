import 'package:flutter/material.dart';
import 'package:modul3/app/data/models/article.dart';
import 'package:modul3/app/modules/articles/views/widgets/article_detail.dart';

class CardArticle extends StatelessWidget {
  final Article article;
  const CardArticle({Key? key, required this.article}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Hero(
          tag: article.urlToImage!,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Image.network(
              article.urlToImage ?? '',
            ),
          ),
        ),
        title: Text(
          article.title,
        ),
        subtitle: Text(article.author ?? ''),
        onTap: () => Navigator.pushNamed(
          context,
          ArticleDetailPage.routeName,
          arguments: article,
        ),
      ),
    );
  }
}
