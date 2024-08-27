import 'package:flutter/material.dart';
// import 'package:news_app/views/components/news_list_view.dart';
import 'package:news_app/views/components/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$categoryName",style: TextStyle(
        fontSize: 24,fontWeight: FontWeight.bold
      ),),),
        body: CustomScrollView(
      slivers: [
        // SliverToBoxAdapter(

        // ),
        NewsListViewBuilder(
          category: categoryName,
        )
      ],
    ));
  }
}
