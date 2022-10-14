import 'package:mystiq_types/mystiq_types.dart' as types;
import 'package:news_api/news_api.dart';

import '../content_models/index.dart' as cm;

class NewsStore extends types.Store {
  cm.NewsStoreConfiguration configuration;

  NewsStore({required this.configuration});

  late NewsAPI _api;

  @override
  Future<void> dispose() async {}

  @override
  Future<void> init() async {
    _api = NewsAPI(apiKey: configuration.apiKey);
  }

  Future<List<types.Card>> _fetchNews(String query) async {
    final articles = await _api.fetchArticles(query: query);
    return articles
        .map((article) => types.Card(
            title: article.title ?? '',
            description: article.description ?? '',
            variantSet: types.VariantSet(small: 'core.card.default')))
        .toList();
  }

  Future<types.Group> fetchContentModel(String query) async {
    final response = await _fetchNews(query);
    return types.Group(
        title: '$query news',
        items: response,
        variantSet: types.VariantSet(small: 'core.group.list.vertical'));
  }
}
