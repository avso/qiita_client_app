// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../qiita_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QiitaPostImpl _$$QiitaPostImplFromJson(Map<String, dynamic> json) =>
    _$QiitaPostImpl(
      title: json['title'] as String?,
      likesCount: json['likes_count'] as int?,
      stocksCount: json['stocks_count'] as int?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      url: json['url'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QiitaPostImplToJson(_$QiitaPostImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'likes_count': instance.likesCount,
      'stocks_count': instance.stocksCount,
      'user': instance.user,
      'url': instance.url,
      'tags': instance.tags,
    };
