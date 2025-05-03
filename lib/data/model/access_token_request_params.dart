import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/access_token_request_params.freezed.dart';
part 'generated/access_token_request_params.g.dart';

@freezed
abstract class AccessTokenRequestParams with _$AccessTokenRequestParams {
  factory AccessTokenRequestParams({
    @JsonKey(name: 'client_id') String? clientId,
    @JsonKey(name: 'client_secret') String? clientSecret,
    @JsonKey(name: 'code') String? code,
  }) = _AccessTokenRequestParams;

  factory AccessTokenRequestParams.fromJson(Map<String, dynamic> json) => _$AccessTokenRequestParamsFromJson(json);
}
