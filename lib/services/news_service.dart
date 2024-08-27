import 'package:dio/dio.dart';
import 'package:news_app/models/atricle_model.dart';

class NewsService {
  final dio = Dio();
  List<ArticleModel> articlesList = [];

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=ce67ab33235a4f87ad9a8d353ed7dd18&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      for (var element in articles) {
        ArticleModel articalModel = ArticleModel.fromJson(element);
        articlesList.add(articalModel);
      }
      // print(articlesList);

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
