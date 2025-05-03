import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qiita_client_app/define/const/constants.dart';
import 'package:qiita_client_app/router/router_config.dart';

class App extends HookConsumerWidget {
  App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Qiita Client App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppConst.primaryColor),
      ),
      routerConfig: ref.watch(goRouterProvider),
    );
  }
}
