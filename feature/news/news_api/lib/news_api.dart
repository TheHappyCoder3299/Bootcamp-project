library news_api;

import 'dart:convert';
import 'dart:io';

import 'package:mystiq_types/mystiq_types.dart';

import 'model/article.dart';

class NewsAPI {
  final String apiKey;

  NewsAPI({required this.apiKey});

  Future<List<Article>> fetchArticles({required String query}) async {
    final url = Uri.https('newsapi.org', '/v2/everything',
        <String, String>{'q': query, 'apiKey': apiKey});

    final response = await mystiq.network.get(url);

    if (response.statusCode == HttpStatus.ok) {
      final newsPayload = NewsResponsePayload.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      return newsPayload.articles;
    } else {
      throw Exception('API Failed');
    }
  }
}
