import 'package:mystiq/mystiq.dart' as mystiq;
import 'package:mystiq/manifest.dart' as core;
import 'package:mystiq_plugin_get_it/mystiq_plugin_get_it.dart';
import 'package:mystiq_plugin_hive/mystiq_plugin_hive.dart';
import 'package:mystiq_plugin_sanity/mystiq_plugin_sanity.dart';
import 'package:mystiq_plugin_shared_preferences/mystiq_plugin_shared_preferences.dart';
import 'package:mystiq_uikit/mystiq_uikit.dart' as ui;
import 'package:news_ux/news_ux.dart' as news;

void main() {
  final content = SanityContentPlugin(
      dataset: 'production',
      projectId: 'wfm4ekrc',
      token: 'skhXMY4GRNmYpgVnSemTCuffHJxJ1PcQMw3K0UBCM'
          '6n9P51pl9O0G13BVNlSjnZiDlKis29Ihm5Lf9OY2whKiK1psZYt0F9DO'
          'ROOQOEqhE2p7HkzKIaVJDAQzsR4EMYJV2IJfQM2rOt7tejQhv407B3lY035Fs7'
          'y5lSgoHeGOtZ0lZbYKuUM');
  final storage = HiveStoragePlugin(keySpace: 'botcamp-project');
  final secureStorage =
      SharedPreferencesStoragePlugin(keySpace: 'bootcamp-project');
  final dependency = GetItDependencyInjectionPlugin();
  mystiq.runApp(
      features: [core.manifest, news.manifest],
      contentPlugin: content,
      storagePlugin: storage,
      secureStoragePlugin: secureStorage,
      dependencyInjectionPlugin: dependency,
      routeMapBuilder: () => mystiq.MystiqRouteMap(routes: {
            '/': (route) => ui.ContentPage(path: '/home'),
          }));
}
