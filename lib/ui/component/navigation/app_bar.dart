import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:qiita_client_app/data/model/user.dart';
import 'package:qiita_client_app/data/provider/authenticated_user.dart';
import 'package:qiita_client_app/data/provider/bottom_navigation_bar_index.dart';
import 'package:qiita_client_app/data/provider/deep_link.dart';
import 'package:qiita_client_app/data/provider/logout.dart';
import 'package:qiita_client_app/data/provider/qiita_access_token.dart';
import 'package:qiita_client_app/data/provider/shared_preferences_notifier.dart';
import 'package:qiita_client_app/define/const/constants.dart';
import 'package:qiita_client_app/router/router_config.dart';
import 'package:qiita_client_app/ui/component/parts/user_profile_icon.dart';

class MyAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;

  MyAppBar({
    super.key,
    this.automaticallyImplyLeading = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late Widget authenticatedUserIcon;
    late User authenticatedUser;

    final user = ref.watch(authenticatedUserProvider);
    user.when(
      loading: () {
        authenticatedUserIcon = Icon(Icons.person);
      },
      error: (err, stack) => Text('Error: $err, Stack: $stack'),
      data: (data) {
        authenticatedUser = data.dataOrThrow;
        authenticatedUserIcon = UserProfileIcon(
          size: 32,
          profileImageUrl: authenticatedUser.profileImageUrl!,
        );
      },
    );

    final appBar = AppBar(
      title: Text('Qiita Client App'),
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: AppConst.primaryColor,
      actions: [
        PopupMenuButton<String>(
          icon: authenticatedUserIcon,
          onSelected: (value) {
            if (value == RoutePath.profile) {
              // 「プロフィール」メニュー押下時処理
              ref.watch(bottomNavigationBarIndexProvider.notifier).updateState(state: 1);
              context.push(RoutePath.profile);
            } else if (value == RoutePath.logout) {
              // 「ログアウト」メニュー押下時処理
              logout(context, ref);
            }
          },
          itemBuilder: (context) {
            return [
              PopupMenuItem<String>(
                value: RoutePath.profile,
                child: Text('プロフィール'),
              ),
              PopupMenuItem(
                value: RoutePath.logout,
                child: Text('ログアウト'),
              ),
            ];
          },
        ),
      ],
    );

    return appBar;
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// ログアウト処理
void logout(BuildContext context, WidgetRef ref) async {
  // ローカルストレージをクリア
  await ref.watch(sharedPreferencesNotifierProvider.notifier).clear();
  // DeepLink起動の判定を強制的にfalseにする（ログアウトなのでDeepLinkではない）
  ref.watch(isDeepLinkProvider.notifier).updateState(state: false);
  // クリアする必要のあるプロバイダーをまとめてクリア
  ref.watch(logoutProvider.notifier).updateState(state: DateTime(2023));
  // 読み込んだアクセストークンだけは手動でクリアする
  ref.invalidate(qiitaAccessTokenProvider);

  WidgetsBinding.instance.addPostFrameCallback((_) {
    context.go(RoutePath.logout);
  });
}
