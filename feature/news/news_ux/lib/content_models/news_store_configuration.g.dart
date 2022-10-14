// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_store_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsStoreConfiguration _$NewsStoreConfigurationFromJson(
        Map<String, dynamic> json) =>
    NewsStoreConfiguration(
      type: json['_type'] as String,
      apiKey: json['apiKey'] as String,
    );

Map<String, dynamic> _$NewsStoreConfigurationToJson(
        NewsStoreConfiguration instance) =>
    <String, dynamic>{
      '_type': instance.type,
      'apiKey': instance.apiKey,
    };
