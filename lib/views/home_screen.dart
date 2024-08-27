import 'package:flutter/material.dart';
import 'package:news_app/views/components/categories_list_view.dart';
import 'package:news_app/views/components/news_listview_builder.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text.rich(TextSpan(children: [
          TextSpan(
              text: "News",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          TextSpan(
              text: "Cloud",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold)),
        ])),
        centerTitle: true,
      ),
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: CategoriesListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          NewsListViewBuilder(category: "general",)
        ],
      ),

      // body: const SingleChildScrollView(
      //   child:
      //    Column(
      //     children: [
      //       CategoriesListView(),
      //       NewsListView(),
      //     ],
      //   ),
      // ),
      // body:  CategoriesListView(),
    );
  }
}
