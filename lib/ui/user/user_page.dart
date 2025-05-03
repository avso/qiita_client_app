import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:qiita_client_app/data/provider/item_list.dart';
import 'package:qiita_client_app/data/provider/selected_user.dart';
import 'package:qiita_client_app/data/model/item.dart';
import 'package:qiita_client_app/data/model/user.dart';
import 'package:qiita_client_app/define/const/constants.dart';
import 'package:qiita_client_app/router/router_config.dart';
import 'package:qiita_client_app/ui/component/navigation/app_bar.dart';

class UserPage extends HookConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedUser = ref.watch(selectedUserProvider);
    final userItemList = ref.watch(userItemListProvider).value;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserProfile(user: selectedUser),
            Divider(height: 32),
            if (userItemList == null) ...[
              CircularProgressIndicator(),
            ] else ...[
              UserItemList(itemList: userItemList),
            ],
          ],
        ),
      ),
    );
  }
}

class UserProfile extends HookConsumerWidget {
  final User user;

  const UserProfile({
    required this.user,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SizedBox(height: 16),
        ClipOval(
          child: SizedBox(
            width: 64,
            height: 64,
            child: Image.network(user.profileImageUrl ?? ''),
          ),
        ),
        SizedBox(height: 8),
        Text('@${user.id}'),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Text(
            user.description ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  '${user.itemsCount}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '投稿',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '${user.followersCount}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'フォロワー',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class UserItemList extends HookConsumerWidget {
  final List<Item> itemList;

  const UserItemList({
    required this.itemList,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Icon(Icons.view_list, color: AppConst.secondaryColor),
              SizedBox(width: 8),
              Text('最新の投稿', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        ...itemList.map((item) {
          return InkWell(
            onTap: () {
              ref.watch(selectedItemProvider.notifier).updateState(state: item);
              context.push(RoutePath.item);
            },
            child: ListTile(
              title: Text(item.title ?? ''),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (item.likesCount! > 0) ...[
                    Text(
                      'LGTM ${item.likesCount}',
                      style: TextStyle(
                        color: AppConst.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ] else ...[
                    Text('LGTM ${item.likesCount}'),
                  ],
                  Text(DateFormat('yyyy/MM/dd hh:mm').format(item.createdAt ?? DateTime(9999, 9, 9))),
                ],
              ),
            ),
          );
        }).toList()
      ],
    );
  }
}
