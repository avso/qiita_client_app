import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:qiita_client_app/data/provider/authenticated_user.dart';
import 'package:qiita_client_app/define/const/constants.dart';
import 'package:qiita_client_app/ui/component/navigation/app_bar.dart';
import 'package:qiita_client_app/ui/component/parts/user_profile_icon.dart';
import 'package:qiita_client_app/ui/user/user_page.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authenticatedUser = ref.watch(authenticatedUserProvider).value!.dataOrThrow;
    final authenticatedUserItemList = ref.watch(authenticatedUserItemListProvider).value;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(authenticatedUser.name ?? ""),
        automaticallyImplyLeading: false,
        backgroundColor: AppConst.primaryColor,
        actions: [
          PopupMenuButton<String>(
            icon: UserProfileIcon(
              size: 32,
              profileImageUrl: authenticatedUser.profileImageUrl!,
            ),
            onSelected: (value) {
              if (value == 'logout') {
                // 「ログアウト」メニュー押下時処理
                logout(context, ref);
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'logout',
                  child: Text('ログアウト'),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserProfile(user: authenticatedUser),
            Divider(height: 32),
            if (authenticatedUserItemList == null) ...[
              CircularProgressIndicator(),
            ] else ...[
              UserItemList(itemList: authenticatedUserItemList),
            ],
          ],
        ),
      ),
    );
  }
}
