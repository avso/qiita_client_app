import 'package:qiita_client_app/data/provider/logout.dart';
import 'package:qiita_client_app/data/provider/user_preferences_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/logged_in.g.dart';

@riverpod
class LoggedIn extends _$LoggedIn {
  @override
  bool build() {
    ref.watch(logoutProvider);

    final userPrefs = ref.watch(userPreferencesNotifierProvider).value;
    if (userPrefs != null) {
      return userPrefs.accessToken != '';
    }
    return false;
  }
}
