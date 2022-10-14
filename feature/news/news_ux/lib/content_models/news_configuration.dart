import 'package:json_annotation/json_annotation.dart';
import 'package:mystiq_types/content_model/container/custom.dart';

part 'news_configuration.g.dart';

@JsonSerializable()
class NewsConfiguration implements CustomContentConfiguration {
  @override
  @JsonKey(name: '_type')
  final String type;

  final String query;

  NewsConfiguration({required this.type, required this.query});

  factory NewsConfiguration.fromJson(Map<String, dynamic> json) =>
      _$NewsConfigurationFromJson(json);
}
