import 'dart:convert';

import 'package:qiita_client_app/data/local/user_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/shared_preferences_notifier.g.dart';

@Riverpod(keepAlive: true)
class SharedPreferencesNotifier extends _$SharedPreferencesNotifier {
  @override
  Future<SharedPreferences> build() async {
    return await SharedPreferences.getInstance();
  }

  // UserPreferencesをローカルストレージに保存してステートに反映
  Future<void> saveUserPreferences(UserPreferences userPreferences) async {
    final prefs = state.value;
    var json = userPreferences.toJson();
    await prefs!.setString('user_preferences', jsonEncode(json));
    state = AsyncData(prefs);
  }

  // ローカルストレージを空にしてステートに反映
  Future<void> clear() async {
    final prefs = state.value;
    await prefs!.clear();
    state = AsyncData(prefs);
  }
}
