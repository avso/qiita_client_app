// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessTokenImpl _$$AccessTokenImplFromJson(Map<String, dynamic> json) =>
    _$AccessTokenImpl(
      clientId: json['client_id'] as String?,
      scopes:
          (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$AccessTokenImplToJson(_$AccessTokenImpl instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'scopes': instance.scopes,
      'token': instance.token,
    };
