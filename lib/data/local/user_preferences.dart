import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_preferences.freezed.dart';
part 'generated/user_preferences.g.dart';

@freezed
abstract class UserPreferences with _$UserPreferences {
  factory UserPreferences({required String? accessToken}) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) => _$UserPreferencesFromJson(json);
}
