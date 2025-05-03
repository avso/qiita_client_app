import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/access_token.freezed.dart';
part 'generated/access_token.g.dart';

@freezed
abstract class AccessToken with _$AccessToken {
  factory AccessToken({
    @JsonKey(name: 'client_id') String? clientId,
    @JsonKey(name: 'scopes') List<String>? scopes,
    @JsonKey(name: 'token') String? token,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) => _$AccessTokenFromJson(json);
}
