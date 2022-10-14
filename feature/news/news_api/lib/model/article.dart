import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class NewsResponsePayload {
  final String status;
  final int totalResults;
  final List<Article> articles;

  NewsResponsePayload({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewsResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$NewsResponsePayloadFromJson(json);
}

@JsonSerializable()
class Source {
  final String? id;
  final String? name;

  Source({required this.id, required this.name});

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}

@JsonSerializable()
class Article {
  final Source source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
