import 'dart:convert';

class Article {
  late String province;
  late String title;
  late String description;
  late String image;

  Article({
    required this.province,
    required this.title,
    required this.description,
    required this.image,
  });

  Article.fromJson(Map<String, dynamic> article) {
    province = article['province'];
    title = article['title'];
    description = article['description'];
    image = article['image'];
  }
}

List<Article> parseArticles(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((json) => Article.fromJson(json)).toList();
}
