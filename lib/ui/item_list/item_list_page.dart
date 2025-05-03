import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import 'package:qiita_client_app/data/model/item.dart';
import 'package:qiita_client_app/data/model/user.dart';
import 'package:qiita_client_app/data/provider/item_list.dart';
import 'package:qiita_client_app/data/provider/qiita_access_token.dart';
import 'package:qiita_client_app/data/provider/selected_user.dart';
import 'package:qiita_client_app/data/provider/user_preferences_notifier.dart';
import 'package:qiita_client_app/debug/debug.dart';
import 'package:qiita_client_app/define/const/constants.dart';
import 'package:qiita_client_app/router/router_config.dart';
import 'package:qiita_client_app/ui/component/dialog/item_filter_dialog.dart';
import 'package:qiita_client_app/ui/component/navigation/app_bar.dart';
import 'package:qiita_client_app/ui/component/parts/like_count_badge.dart';
import 'package:qiita_client_app/ui/component/parts/user_profile_icon.dart';

class ItemListPage extends HookConsumerWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ホットリロードするための苦肉の策
    if (Const.flavor == 'dev' && (ref.watch(qiitaAccessTokenProvider) == '')) {
      testModeSharedPreferences();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final accessToken = ref.watch(userPreferencesNotifierProvider).value?.accessToken;
        if (accessToken != null) {
          ref.read(qiitaAccessTokenProvider.notifier).updateState(state: accessToken);
        }
      });
      return Scaffold();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(automaticallyImplyLeading: false),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('フィルター'),
        icon: Icon(Icons.filter_list),
        foregroundColor: Colors.white,
        backgroundColor: AppConst.secondaryColor,
        onPressed: () async {
          final selectedItemListFilter = ref.watch(selectedItemListFilterProvider);
          var result = await showDialog(
            context: context,
            barrierDismissible: true,
            builder: (context) => const ItemFilterSimpleDialog(),
          );
          if (result == null || result == selectedItemListFilter) {
            return;
          }
          ref.watch(selectedItemListFilterProvider.notifier).updateState(state: result);
          ref.watch(itemListProvider.notifier).updateState(state: []);
          ref.invalidate(itemListPageProvider);
        },
      ),
      body: _buildBody(context, ref),
    );
  }

  Widget _buildBody(BuildContext context, WidgetRef ref) {
    final itemList = ref.watch(itemListProvider).value;
    if (itemList != null && itemList.isNotEmpty) {
      bool isLoading = false;

      return _ItemListView(
        itemList: itemList,
        onTapItem: (item) {
          ref.watch(selectedItemProvider.notifier).updateState(state: item);
          context.push(RoutePath.item);
        },
        onTapUser: (user) {
          ref.watch(selectedUserProvider.notifier).updateState(state: user);
          context.push(RoutePath.user);
        },
        onScrollEnd: () {
          if (!isLoading) {
            isLoading = true;
            ref.watch(itemListPageProvider.notifier).setNextPage();
          }
        },
      );
    }

    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _ItemListView extends HookConsumerWidget {
  final List<Item> itemList;
  final Function(Item item) onTapItem;
  final Function(User user) onTapUser;
  final Function() onScrollEnd;

  const _ItemListView({
    required this.itemList,
    required this.onTapItem,
    required this.onTapUser,
    required this.onScrollEnd,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        // if (notification.metrics.pixels == notification.metrics.maxScrollExtent) {
        if (notification.metrics.pixels > notification.metrics.maxScrollExtent * 0.9) {
          onScrollEnd();
        }
        return true;
      },
      child: RefreshIndicator(
        onRefresh: () async {
          // プロバイダーの破棄。次にreadした時に更新される
          ref.invalidate(itemListPageProvider);
          ref.invalidate(itemListProvider);
          // itemListの取得が完了するまでくるくるを表示する
          return ref.read(itemListProvider.future);
        },
        child: ListView.separated(
          physics: const AlwaysScrollableScrollPhysics(), // リストの数に関係なくスクロールできるようにする
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            final Item item = itemList[index];
            if (itemList.length == index + 1) {
              // リストの末尾にローディング表示
              return Center(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              );
            } else {
              // リストデータの表示
              return InkWell(
                onTap: () => onTapItem(item),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Slidable(
                    key: UniqueKey(),
                    startActionPane: ActionPane(
                      motion: const DrawerMotion(),
                      dismissible: DismissiblePane(onDismissed: () {
                        itemList.removeAt(index);
                        ref.watch(itemListProvider.notifier).updateState(state: itemList);
                      }),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            itemList.removeAt(index);
                            ref.watch(itemListProvider.notifier).updateState(state: itemList);
                          },
                          backgroundColor: Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: '非表示',
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: Color(0xFF21B7CA),
                          foregroundColor: Colors.white,
                          icon: Icons.share,
                          label: 'シェア',
                        ),
                      ],
                    ),
                    endActionPane: ActionPane(
                      motion: const DrawerMotion(),
                      dismissible: DismissiblePane(onDismissed: () {
                        itemList.removeAt(index);
                        ref.watch(itemListProvider.notifier).updateState(state: itemList);
                      }),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: Color(0xFF21B7CA),
                          foregroundColor: Colors.white,
                          icon: Icons.share,
                          label: 'シェア',
                        ),
                        SlidableAction(
                          onPressed: (context) {
                            itemList.removeAt(index);
                            ref.watch(itemListProvider.notifier).updateState(state: itemList);
                          },
                          backgroundColor: Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: '非表示',
                        ),
                      ],
                    ),
                    child: ListTile(
                      key: ValueKey<String?>(item.id),
                      leading: GestureDetector(
                        onTap: () => onTapUser(item.user!),
                        child: UserProfileIcon(
                          size: 48,
                          profileImageUrl: item.user!.profileImageUrl!,
                        ),
                      ),
                      title: Text(item.title!),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 120,
                            child: Text(
                              item.user!.id!,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(DateFormat.Md().add_jm().format(item.createdAt!)),
                        ],
                      ),
                      trailing: LikeCountBadge(likesCount: item.likesCount!),
                    ),
                  ),
                ),
              );
            }
          },
          separatorBuilder: (context, index) {
            return Divider(height: 1);
          },
        ),
      ),
    );
  }
}
