library news_api;

import 'dart:io';
import 'package:mystiq_types/mystiq_types.dart';

class NewsAPI {
  Future<void> fetchArticles() async {
    final response =
        await mystiq.network.get(Uri.parse('https://newsapi.org/v2/everything'
            '?apiKey=083fc1fcd23a4aeb88577f1a27d6abe1&q=sports&pageSize=10'));
    if (response.statusCode == HttpStatus.ok) {
      print(response.body);
    } else {
      throw Exception('API Failed');
    }
  }
}
