import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:qiita_client_app/data/local/user_preferences.dart';
import 'package:qiita_client_app/data/provider/shared_preferences_notifier.dart';

part 'generated/user_preferences_notifier.g.dart';

@riverpod
class UserPreferencesNotifier extends _$UserPreferencesNotifier {
  // ローカルストレージからUserPreferencesの取り出し
  @override
  Future<UserPreferences?> build() async {
    final sharedPreferences = ref.watch(sharedPreferencesNotifierProvider);
    return sharedPreferences.when(
      loading: () => null,
      error: (error, stack) => null,
      data: (data) {
        final json = data.getString('user_preferences') ?? "";
        Map<String, dynamic> value;
        if (json.isEmpty) {
          value = <String, dynamic>{};
        } else {
          value = jsonDecode(json);
        }
        return UserPreferences.fromJson(value);
      },
    );
  }

  // ローカルストレージにUserPreferencesを保存
  Future<void> save({
    required UserPreferences userPreferences,
  }) async {
    ref.watch(sharedPreferencesNotifierProvider.notifier).saveUserPreferences(userPreferences);
    state = AsyncData(userPreferences);
  }
}
