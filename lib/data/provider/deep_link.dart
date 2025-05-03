import 'package:flutter/material.dart';
import 'package:qiita_client_app/data/local/user_preferences.dart';
import 'package:qiita_client_app/data/provider/qiita_access_token.dart';
import 'package:qiita_client_app/data/provider/user_preferences_notifier.dart';
import 'package:qiita_client_app/data/repository/qiita_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:app_links/app_links.dart';
import 'package:url_launcher/url_launcher.dart';

part 'generated/deep_link.g.dart';

@riverpod
class InitialUri extends _$InitialUri {
  @override
  Future<Uri?> build() async {
    final appLinks = AppLinks();
    return await appLinks.getInitialLink();
  }
}

@riverpod
class IsDeepLink extends _$IsDeepLink {
  @override
  Future<bool> build() async {
    final initialUri = await ref.read(initialUriProvider.future);
    if (initialUri != null && initialUri.path == '/oauth/authorize/callback') {
      await _onAuthorizeCallbackIsCalled(ref, initialUri);
      return true;
    }
    return false;
  }

  void updateState({required bool state}) {
    this.state = AsyncData(state);
  }
}

Future<void> _onAuthorizeCallbackIsCalled(AutoDisposeAsyncNotifierProviderRef<bool> ref, Uri uri) async {
  closeInAppWebView();

  String token = '';

  // アクセストークンを取得
  final accessToken = await ref.read(qiitaRepositoryProvider).getAccessTokenFromCallbackUri(uri: uri);

  accessToken.when(
    failure: (error) {
      debugPrint('Error: $error');
      return;
    },
    success: (data) {
      token = data.token ?? '';
    },
  );

  // アクセストークンをプロバイダーに登録
  ref.watch(qiitaAccessTokenProvider.notifier).updateState(state: token);

  // アクセストークンをローカルに保存
  final userPreferences = UserPreferences(accessToken: token);
  await ref.watch(userPreferencesNotifierProvider.notifier).save(userPreferences: userPreferences);
}
