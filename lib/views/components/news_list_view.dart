import 'package:flutter/material.dart';
import 'package:news_app/models/atricle_model.dart';
// import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/components/news_tile.dart';


// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
   NewsListView({super.key, required this.articles});
  
    List<ArticleModel> articles = [];

  
  @override
  Widget build(BuildContext context) {
    return  SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(
        articleModel: articles[index],
      );
    }));
  }
}


//  articles.isEmpty ? Center(child: CircularProgressIndicator()) :