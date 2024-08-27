import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CatgoryCard extends StatelessWidget {
  const CatgoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryView(categoryName: category.categoryName,),
            ));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 15),
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(category.imageAssetUrl)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          category.categoryName,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
