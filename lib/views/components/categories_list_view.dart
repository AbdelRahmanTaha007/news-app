import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/components/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
        categoryName: "Business", imageAssetUrl: "assets/business.avif"),
    CategoryModel(
        categoryName: "Entertainment",
        imageAssetUrl: "assets/entertaiment.avif"),
    CategoryModel(
        categoryName: "General", imageAssetUrl: "assets/general.avif"),
    CategoryModel(categoryName: "Health", imageAssetUrl: "assets/health.avif"),
    CategoryModel(
        categoryName: "Science", imageAssetUrl: "assets/science.avif"),
    CategoryModel(categoryName: "Sports", imageAssetUrl: "assets/sports.avif"),
    CategoryModel(
        categoryName: "Technology", imageAssetUrl: "assets/technology.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CatgoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
