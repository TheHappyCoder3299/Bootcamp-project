// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsConfiguration _$NewsConfigurationFromJson(Map<String, dynamic> json) =>
    NewsConfiguration(
      type: json['_type'] as String,
      query: json['query'] as String,
    );

Map<String, dynamic> _$NewsConfigurationToJson(NewsConfiguration instance) =>
    <String, dynamic>{
      '_type': instance.type,
      'query': instance.query,
    };
