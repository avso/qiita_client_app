import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

import 'package:qiita_client_app/ui/component/navigation/bottom_navigation_bar.dart';
import 'package:qiita_client_app/ui/item/item_page.dart';
import 'package:qiita_client_app/ui/item_list/item_list_page.dart';
import 'package:qiita_client_app/ui/launch/launch_page.dart';
import 'package:qiita_client_app/ui/profile/profile_page.dart';
import 'package:qiita_client_app/ui/user/user_page.dart';

part 'generated/router_config.g.dart';

class RoutePath {
  static const String launch = '/launch';
  static const String callback = '/oauth/authorize/callback';
  static const String login = '/login';
  static const String logout = '/logout';
  static const String home = '/home';
  static const String config = '/config';
  static const String profile = '/profile';
  static const String user = '/user';
  static const String item = '/item';
}

@riverpod
GoRouter goRouter(goRouterRef) {
  return GoRouter(
    initialLocation: RoutePath.launch,
    routes: [
      GoRoute(
        path: RoutePath.launch,
        builder: (context, state) => const LaunchPage(),
        // pageBuilder: (BuildContext context, GoRouterState state) => myTransitionB(context, state, const LaunchPage()),
      ),
      GoRoute(
        path: RoutePath.callback,
        builder: (context, state) => const LaunchPage(),
        // pageBuilder: (BuildContext context, GoRouterState state) => myTransitionB(context, state, const LaunchPage()),
      ),
      GoRoute(
        path: RoutePath.logout,
        builder: (context, state) => const LaunchPage(),
        // pageBuilder: (BuildContext context, GoRouterState state) => myTransitionB(context, state, const LaunchPage()),
      ),
      GoRoute(
        path: RoutePath.login,
        builder: (context, state) => const Placeholder(),
      ),
      ShellRoute(
        builder: (BuildContext context, GoRouterState state, Widget body) {
          return Scaffold(
            body: body,
            bottomNavigationBar: const MyBottomNavigationBar(),
          );
        },
        routes: [
          GoRoute(
            path: RoutePath.home,
            builder: (context, state) => const ItemListPage(),
            // pageBuilder: (BuildContext context, GoRouterState state) => myTransitionB(context, state, const ItemListPage()),
          ),
          GoRoute(
            path: RoutePath.config,
            builder: (context, state) => const Placeholder(),
          ),
          GoRoute(
            path: RoutePath.profile,
            builder: (context, state) => const ProfilePage(),
            // pageBuilder: (BuildContext context, GoRouterState state) => myTransitionB(context, state, const ProfilePage()),
          ),
          GoRoute(
            path: RoutePath.user,
            builder: (context, state) => const UserPage(),
            // pageBuilder: (BuildContext context, GoRouterState state) => myTransitionB(context, state, const UserPage()),
          ),
          GoRoute(
            path: RoutePath.item,
            builder: (context, state) => const ItemPage(),
            // pageBuilder: (BuildContext context, GoRouterState state) => myTransitionB(context, state, const ItemPage()),
          ),
        ],
      ),
    ],
  );
}

/// 現在のページを取得
/// GoRouter.of(context).location()
extension GoRouterExtension on GoRouter {
  String location() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch ? lastMatch.matches : routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return location;
  }
}

///
/// 画面遷移のアニメーション
///
// 新しい画面が下から出てくる
CustomTransitionPage transitionWithBottomToUp(BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 1000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // 遷移時のアニメーションを指定
      const Offset begin = Offset(0.0, 1.0);
      const Offset end = Offset.zero;
      final Tween<Offset> tween = Tween(begin: begin, end: end);
      final Animation<Offset> offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

// スライドイン（左右）
CustomTransitionPage myTransitionA(BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 1000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const Offset begin = Offset(1.0, 0.0); // 右から左
      // const Offset begin = Offset(-1.0, 0.0); // 左から右
      const Offset end = Offset.zero;
      final Animatable<Offset> tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));
      final Animation<Offset> offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

// スライドイン（上下）
CustomTransitionPage myTransitionB(BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 1000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // const Offset begin = Offset(0.0, 1.0); // 下から上
      const Offset begin = Offset(0.0, -1.0); // 上から下
      const Offset end = Offset.zero;
      final Animatable<Offset> tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));
      final Animation<Offset> offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

// フェードイン
CustomTransitionPage myTransitionC(BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 1000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const double begin = 0.0;
      const double end = 1.0;
      final Animatable<double> tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));
      final Animation<double> doubleAnimation = animation.drive(tween);
      return FadeTransition(
        opacity: doubleAnimation,
        child: child,
      );
    },
  );
}

// ブラックアウト・ホワイトアウト
CustomTransitionPage myTransitionD(BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 1500),
    reverseTransitionDuration: const Duration(milliseconds: 1500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final color = ColorTween(
        begin: Colors.transparent,
        end: Colors.black, // ブラックアウト
        // end: Colors.white, // ホワイトアウト
      ).animate(CurvedAnimation(
        parent: animation,
        // 前半
        curve: Interval(
          0.0,
          0.5,
          curve: Curves.easeInOut,
        ),
      ));
      final opacity = Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(
        parent: animation,
        // 後半
        curve: Interval(
          0.5,
          1.0,
          curve: Curves.easeInOut,
        ),
      ));
      return AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Container(
            color: color.value,
            child: Opacity(
              opacity: opacity.value,
              child: child,
            ),
          );
        },
        child: child,
      );
    },
  );
}

// ワイプ
CustomTransitionPage myTransitionE(BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 1000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const double begin = 0.0;
      const double end = 1.0;
      final Animatable<double> tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));
      final Animation<double> doubleAnimation = animation.drive(tween);
      return FadeTransition(
        opacity: doubleAnimation,
        child: child,
      );
    },
  );
}
