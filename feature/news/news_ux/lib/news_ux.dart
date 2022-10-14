library news_ux;

import 'package:mystiq_types/mystiq_types.dart' as type;
import 'package:mystiq_types/platform.dart';
import 'package:mystiq_uikit/container/index.dart';

import 'content_models/index.dart' as cm;
import 'stores/news_store.dart';

final manifest = type.FeatureManifest(
  namespace: 'newsFeature',
  title: 'News Feature',
  customContentConfigurations: {
    'custom.news': cm.NewsConfiguration.fromJson,
  },
  customVariants: {
    'custom.news': (context, model) {
      final query = (model.configuration as cm.NewsConfiguration).query;

      Future<type.ContentItem> contentBuilder() =>
          mystiq.di.get<NewsStore>().fetchContentModel(query);

      return NetworkContent(contentBuilder: contentBuilder, model: model);
    }
  },
  dataStoreConfigurations: {'store.news': cm.NewsStoreConfiguration.fromJson},
  pageDataStores: {
    'store.news': (model) async =>
        type.mystiq.registerStore<NewsStore>(NewsStore(
          configuration: model.configuration as cm.NewsStoreConfiguration,
        )),
  },
);
