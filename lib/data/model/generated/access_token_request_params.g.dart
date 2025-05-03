// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../access_token_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessTokenRequestParamsImpl _$$AccessTokenRequestParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AccessTokenRequestParamsImpl(
      clientId: json['client_id'] as String?,
      clientSecret: json['client_secret'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$AccessTokenRequestParamsImplToJson(
        _$AccessTokenRequestParamsImpl instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'code': instance.code,
    };
