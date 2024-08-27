import 'package:flutter/material.dart';
import 'package:news_app/models/atricle_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/components/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data ?? [],
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text("There is an Error"),
            );
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}

// List<ArticleModel> articles = [];
// @override
// void initState() {
//   super.initState();
//   getGeneralNews();
// }

// Future<void> getGeneralNews() async {
//   articles = await NewsService().getNews();
//   isLoading = false;
//   setState(() {});
// }

// isLoading
//         ? SliverToBoxAdapter(
//             child: Center(
//               child: CircularProgressIndicator(),
//             ),
//           )
//         :articles.isNotEmpty ?  NewsListView(
//             articles: articles,
//           ) :  ;
