import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:qiita_client_app/data/provider/bottom_navigation_bar_index.dart';
import 'package:qiita_client_app/define/const/constants.dart';
import 'package:qiita_client_app/router/router_config.dart';

class MyBottomNavigationBar extends HookConsumerWidget {
  const MyBottomNavigationBar({super.key});

  static const bottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.format_list_bulleted),
      label: '投稿一覧',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'プロフィール',
    ),
  ];

  static const bottomNavigationBarPaths = [
    RoutePath.home,
    RoutePath.profile,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prevIndex = ref.watch(bottomNavigationBarIndexProvider);

    final bottomNavigationBar = BottomNavigationBar(
      items: bottomNavigationBarItems,
      backgroundColor: Colors.white,
      selectedItemColor: AppConst.secondaryColor,
      unselectedItemColor: Colors.black,
      currentIndex: prevIndex,
      onTap: (index) {
        // 既に画面遷移先のページを表示しているなら画面遷移させない
        if (bottomNavigationBarPaths[index] == GoRouter.of(context).location()) {
          return;
        }

        ref.watch(bottomNavigationBarIndexProvider.notifier).updateState(state: index);
        context.push(bottomNavigationBarPaths[index]);

        /// ToDo メモリーリークしてるはず。ボトムナビで遷移する度にGoRouterのスタックが溜まるため。
        /// context.push()の代わりにcontext.go()を使えば回避できるはずだが、
        /// 今度はボトムナビで遷移する度に画面インスタンスが再生成されてしまう（/homeへの遷移だとサーバー通信が発生する）
      },
    );
    return bottomNavigationBar;
  }
}
