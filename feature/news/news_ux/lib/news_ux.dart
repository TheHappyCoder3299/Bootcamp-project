library news_ux;

import 'package:flutter/material.dart';
import 'package:mystiq_types/mystiq_types.dart';
import 'package:news_api/news_api.dart';

final manifest =
    FeatureManifest(title: 'News', namespace: 'news', cardVariants: {
  'summary': (context, model) {
    NewsAPI().fetchArticles();
    print("API executed");
    return ListTile(
      title: Text(model.title ?? ''),
      subtitle: Text(model.description ?? ''),
    );
  }
});
