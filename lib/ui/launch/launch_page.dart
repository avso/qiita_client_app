import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:qiita_client_app/data/local/user_preferences.dart';
import 'package:qiita_client_app/data/provider/deep_link.dart';
import 'package:qiita_client_app/data/provider/qiita_access_token.dart';
import 'package:qiita_client_app/data/provider/shared_preferences_notifier.dart';
import 'package:qiita_client_app/data/provider/user_preferences_notifier.dart';
import 'package:qiita_client_app/debug/debug.dart';
import 'package:qiita_client_app/router/router_config.dart';

import 'package:qiita_client_app/define/const/constants.dart';

class LaunchPage extends HookConsumerWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 状態管理
    final isExecutedOnce = useState(false); // 画面遷移が何度も実行されるのを防ぐ

    useEffect(
      () {
        // デバッグコード
        if (Const.flavor == 'dev') {
          // addSharedPreferences(ref);
          // clearSharedPreferences();
          testModeSharedPreferences(); // ブラウザデバッグ用
        }
        return null;
      },
      const [],
    );

    // Deep Linkの判定
    final isDeepLink = ref.watch(isDeepLinkProvider).value;

    // ローカルストレージからユーザー設定の読み込み
    final userPrefs = ref.watch(userPreferencesNotifierProvider).value;

    if (userPrefs != null && isDeepLink != null && !isExecutedOnce.value) {
      if (!isDeepLink && (userPrefs.accessToken == null || userPrefs.accessToken!.isEmpty)) {
        isExecutedOnce.value = true;
        // DeepLinkによるアプリ起動ではなく、ローカルストレージにアクセストークンがない場合、認証認可のリクエストを行う。
        _launchUrl('${QiitaConst.authEndpoint}?client_id=${QiitaConst.clientId}&scope=read_qiita');
      } else if (userPrefs.accessToken != null) {
        isExecutedOnce.value = true;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // アクセストークンをプロバイダーに登録
          ref.watch(qiitaAccessTokenProvider.notifier).updateState(state: userPrefs.accessToken!);

          context.go(RoutePath.home);
        });
      }
    }
    return _ui(context);
  }

  Widget _ui(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 7,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Qiita Client App',
                      style: TextStyle(color: Colors.white, fontSize: 48),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'キータクライアントアプリ',
                      style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: DefaultTextStyle(
                style: TextStyle(color: Colors.white, fontSize: 16),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ver. ${AppConst.version}'),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          showLicensePage(context: context);
                        },
                        child: Const.flavor != 'prd' ? Text(Const.flavor) : SizedBox(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // アプリ内部ブラウザの起動
  Future<void> _launchUrl(url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> addSharedPreferences(WidgetRef ref) async {
    final userPreferences = UserPreferences(accessToken: 'ac6d1036484f9f452d70f8f3a4eb3d0ce5247e2c');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(userPreferencesNotifierProvider.notifier).save(userPreferences: userPreferences);
    });
  }

  Future<void> clearSharedPreferences(WidgetRef ref) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(sharedPreferencesNotifierProvider.notifier).clear();
    });
  }

  Future<void> checkSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    debugPrint(prefs.getString('user_preferences'));
  }
}
