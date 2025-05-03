import 'package:qiita_client_app/data/model/item.dart';
import 'package:qiita_client_app/data/model/user.dart';
import 'package:qiita_client_app/data/provider/dio_notifier.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import 'package:qiita_client_app/data/model/access_token.dart';
import 'package:qiita_client_app/data/model/qiita_post.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/qiita_data_source.g.dart';

@riverpod
QiitaDataSource qiitaDataSource(QiitaDataSourceRef ref) {
  return QiitaDataSource(
    ref.watch(dioNotifierProvider),
  );
}

@RestApi(baseUrl: "https://qiita.com/api/v2")
abstract class QiitaDataSource {
  factory QiitaDataSource(Dio dio, {String baseUrl}) = _QiitaDataSource;

  // static const _jsonHeader = "Content-Type: application/json";
  // static const _jsonHeaders = <String, dynamic>{
  //   'Accept-Language': 'ja,en-US;q=0.9,en;q=0.8',
  //   'Accept-Encoding': 'gzip, deflate, br',
  //   'Sec-Fetch-Dest': 'empty',
  //   'Sec-Fetch-Mode': 'cors',
  //   'Sec-Fetch-Site': 'none',
  //   'Accept': '*/*',
  //   'Sec-Ch-Ua-Platform': 'Windows',
  //   'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36',
  //   'Sec-Ch-Ua-Mobile': '?0',
  //   'Content-Type': 'application/json',
  //   'Sec-Ch-Ua': '"Not/A)Brand";v="99", "Google Chrome";v="115", "Chromium";v="115"',
  //   'Content-Length': '165',
  //   'Connection': 'keep-alive',
  //   'Host': 'qiita.com',
  // };

  // アクセストークンの入手
  @POST('/access_tokens')
  // @Header(_jsonHeader)
  // @Headers(_jsonHeaders)
  Future<AccessToken> getAccessToken(
    @Field('client_id') String clientId,
    @Field('client_secret') String clientSecret,
    @Field('code') String code,
  );

  // ログインユーザーのユーザー情報を取得
  @GET('/authenticated_user')
  Future<User> getAuthenticatedUser();

  // 投稿一覧を取得
  @GET('/items')
  Future<List<Item>> getItemList(
    @Query('page') int page,
    @Query('query') String? query,
  );

  // 指定されたタグの付いた投稿一覧を取得
  @GET('/tags/{tag}/items')
  Future<List<QiitaPost>> getQiitaPosts(
    @Path('tag') String tag,
    @Query('per_page') int perPage,
  );

  // ユーザーの投稿一覧を取得
  @GET('/users/{user_id}/items')
  Future<List<Item>> getUserItemList(
    @Path('user_id') String userId,
  );
}
