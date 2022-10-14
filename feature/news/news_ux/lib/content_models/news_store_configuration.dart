import 'package:json_annotation/json_annotation.dart';
import 'package:mystiq_types/mystiq_types.dart';

part 'news_store_configuration.g.dart';

@JsonSerializable()
class NewsStoreConfiguration implements DataStoreConfiguration {
  @override
  @JsonKey(name: '_type')
  final String type;

  final String apiKey;

  NewsStoreConfiguration({required this.type, required this.apiKey});

  factory NewsStoreConfiguration.fromJson(Map<String, dynamic> json) =>
      _$NewsStoreConfigurationFromJson(json);
}
